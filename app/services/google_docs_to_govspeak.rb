require "zip"

class GoogleDocsToGovspeak
  def initialize(uploaded_file)
    @uploaded_file = uploaded_file
  end

  def to_govspeak
    doc = Nokogiri::HTML(content_from_zipfile)

    strip_paragraphs_from_tables(doc)
    strip_google_tracking_links(doc)

    # Strip everything except the body
    body_html = doc.css("body")

    markdown = ReverseMarkdown.convert(body_html.to_s)

    # The resulting markdown can sometimes contain &nbsp;'s. Translate them
    # into spaces and make sure that we don't have too many.
    markdown.gsub!("&nbsp;", " ")
    markdown.gsub!("  ", " ")

    markdown
  end

private

  # Fetch the HTML file from the export.
  def content_from_zipfile
    content = ""

    Zip::File.open(@uploaded_file.path) do |zip_file|
      zip_file.each do |entry|
        content = entry.get_input_stream.read
      end
    end

    content
  end

  # Remove the paragraphs inside table cells, otherwise the converter will
  # put in line breaks that will break the table layout.
  def strip_paragraphs_from_tables(doc)
    doc.css("td p").each { |node| node.replace(node.children) }
  end

  # Google exports HTML with the links wrapped in a tracking URL like
  # https://www.google.com/url?q=THE_URRL&sa=D&ust=12312&usg=AFQjCN...
  # This removes them.
  def strip_google_tracking_links(doc)
    doc.css("a").each do |node|
      href = node.attr("href").to_s
      next if href.blank?

      query_string = URI.parse(href).query
      actual_url = Rack::Utils.parse_nested_query(query_string)["q"]

      node["href"] = actual_url
    end
  end
end

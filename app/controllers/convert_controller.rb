class ConvertController < ApplicationController
  def index; end

  def create
    file = params.dig(:upload, :file)

    if file.blank?
      @error = "Choose a file to convert"
      return render :index
    end

    @govspeak_input = GoogleDocsToGovspeak.new(file).to_govspeak

    if @govspeak_input
      # Preview the converted Govspeak
      @govspeak_doc = Govspeak::Document.new(@govspeak_input)
      @govspeak_output = @govspeak_doc.to_html.html_safe
    else
      @error = "Could not convert Google Doc. Check the instructions and try again."
    end

    render :index
  end
end

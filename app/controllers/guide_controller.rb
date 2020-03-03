class GuideController < ApplicationController
  def index
    contents = File.read(Rails.root.join("app/assets/markdown/guide.md"))
    @govspeak_doc = Govspeak::Document.new(contents)
    @govspeak_output = @govspeak_doc.to_html.html_safe

    render :index
  end
end

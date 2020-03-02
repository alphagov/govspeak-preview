class ConvertController < ApplicationController
  def index; end

  def create
    @govspeak_input = GoogleDocsToGovspeak.new(params[:upload][:file]).to_govspeak

    # Preview the converted Govspeak
    @govspeak_doc = Govspeak::Document.new(@govspeak_input)
    @govspeak_output = @govspeak_doc.to_html.html_safe

    render :index
  end
end

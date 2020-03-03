require "govspeak"

class PreviewController < ApplicationController
  def new
    if params[:styleguide]
      styleguides = YAML.safe_load(File.read(File.expand_path("lib/styleguides.yml"))).with_indifferent_access
      @govspeak_input = styleguides[params[:styleguide]]
    else
      @govspeak_input = params[:govspeak]
    end
  end

  def create
    @govspeak_doc = Govspeak::Document.new(params[:govspeak])
    @govspeak_output = @govspeak_doc.to_html.html_safe
    @govspeak_input = params[:govspeak]
    render :new
  end
end

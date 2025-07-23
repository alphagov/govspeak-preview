require "govspeak"

class PreviewController < ApplicationController
  include LocaleHelper

  def new
    @options = locale_options

    if params[:styleguide]
      styleguides = YAML.safe_load(File.read(File.expand_path("lib/styleguides.yml"))).with_indifferent_access
      @govspeak_input = styleguides[params[:styleguide]]
    else
      @govspeak_input = params[:govspeak]
    end
  end

  def create
    @options = locale_options(selected: params[:locale])
    @govspeak_doc = Govspeak::Document.new(
      params[:govspeak],
      { locale: params[:locale] },
    )
    @govspeak_output = @govspeak_doc.to_html.html_safe
    @govspeak_input = params[:govspeak]
    render :new
  end
end

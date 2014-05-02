require 'govspeak'

class PreviewController < ApplicationController

	def new

		if params[:styleguide]
			styleguides = YAML.load(File.read(File.expand_path('lib/styleguides.yml'))).with_indifferent_access
			@govspeak_input = styleguides[params[:styleguide]]
		else
			@govspeak_input = params[:govspeak]
		end

	end

	def create
		@govspeak_output = Govspeak::Document.new(params[:govspeak]).to_html.html_safe
		@govspeak_input = params[:govspeak]
		render :new
	end
end

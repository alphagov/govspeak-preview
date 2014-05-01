require 'govspeak'

class PreviewController < ApplicationController

	def new
		@govspeak_input = params[:govspeak]
	end

	def create
		@govspeak_output = Govspeak::Document.new(params[:govspeak]).to_html.html_safe
		@govspeak_input = params[:govspeak]
		render :new
	end
end

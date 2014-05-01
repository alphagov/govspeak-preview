class PreviewController < ApplicationController

	def create
		@govspeak_output = params[:govspeak]
		render :new
	end
end

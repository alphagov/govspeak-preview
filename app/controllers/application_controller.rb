include Slimmer::Headers

class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_slimmer_template
  def set_slimmer_template
  	set_slimmer_headers(template: "header_footer_only")
  end

end

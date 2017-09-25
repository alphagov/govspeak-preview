class ApplicationController < ActionController::Base
  protect_from_forgery

  include Slimmer::Headers
  include Slimmer::GovukComponents
end

class ApplicationController < ActionController::Base
  before_action :allow_only_html_requests

  protect_from_forgery with: :exception

  def allow_only_html_requests
    head :not_acceptable unless request.format.html?
  end
end

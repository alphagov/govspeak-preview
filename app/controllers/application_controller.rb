class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from ActionController::InvalidAuthenticityToken do
    render_error(
      403,
      body: "Invalid authenticity token",
    )
  end
end

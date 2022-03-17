Rails.application.routes.draw do
  constraints(host: /govspeak-preview.herokuapp.com/) do
    match "/(*path)" => redirect { |params, _req| "https://govspeak-preview.publishing.service.gov.uk/#{params[:path]}" }, via: %i[get post]
  end

  resources :preview
  resources :convert, only: %w[index create]
  resources :guide
  root to: "preview#new"
end

Rails.application.routes.draw do
  get "/healthcheck/live", to: proc { [200, {}, %w[OK]] }

  resources :preview
  resources :convert, only: %w[index create]
  resources :guide
  resources :editor, only: %w[index]
  root to: "preview#new"
end

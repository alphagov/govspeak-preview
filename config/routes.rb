Rails.application.routes.draw do
  resources :preview
  resources :convert, only: %w[index create]
  root to: 'preview#new'
end

Rails.application.routes.draw do
  resources :preview
  resources :convert, only: %w[index create]
  resources :guide
  root to: 'preview#new'
end

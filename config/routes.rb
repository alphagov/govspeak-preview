Rails.application.routes.draw do
  resources :preview
  root to: 'preview#new'
end

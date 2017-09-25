GovspeakPreview::Application.routes.draw do
  resources :preview

  root :to => 'preview#new'
end

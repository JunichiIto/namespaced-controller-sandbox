Rails.application.routes.draw do
  resources :blogs
  namespace :admin do
    resources :blogs, only: %i(index show)
  end
  root to: 'visitors#index'
end

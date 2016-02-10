Rails.application.routes.draw do
  resources :blogs
  namespace :staff do
    resources :blogs, only: %i(index show)
  end
  root to: 'visitors#index'
end

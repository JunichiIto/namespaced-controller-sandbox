Rails.application.routes.draw do
  resources :blogs
  namespace :staffs do
    resources :blogs, only: %i(index show)
  end
  root to: 'blogs#index'
end

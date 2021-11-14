Rails.application.routes.draw do
  root to: 'event#index'
  devise_for :users

  resources :static_pages
  resources :event
  resources :attendances
  resources :user, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

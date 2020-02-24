Rails.application.routes.draw do
  resources :you_videos
  resources :posts
  resources :orders
  resources :clients
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

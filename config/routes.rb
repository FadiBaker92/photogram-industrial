Rails.application.routes.draw do

  root to: "photos#index"
  devise_for :users
  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos
  
  

  get ":username/liked" => "users#liked" , as: :liked

  get ":username/feed" => "users#feed", as: :user_feed

  get ":username/followers" => "users#followers", as: :user_followers
  
  get ":username/following" => "users#following", as: :user_following

  get "/:username" => "users#show" , as: :user

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do
  devise_for :users
  get :top, to: "top#index"
  get :mypage, to: "mypage#index"

  root "users#index"
  resources :users, only: [:index, :show, :edit, :update, :destroy]
  resources :posts
  # get 'users/show'
  # get 'users/edit'
  # get 'users/index'
  # get 'users/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

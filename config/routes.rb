Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :images
  end
  resources :images, only: [] do 
    resources :comments, only: [:create]
  end
  root to: "home#index"
  get '/user/profile' => "users#profile"
end

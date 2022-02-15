Rails.application.routes.draw do

  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  resources :posts do
    resources :likes
  end

  #root "posts#index"
  root 'home#index'
  resources :users, only: [:show, :edit, :update]
  put '/post/:id/like', to: 'posts#like', as: 'like'
end

Rails.application.routes.draw do

  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  resources :posts do
    resources :likes
  end

  #root "posts#index"
  root 'posts#index'
  resources :users, only: [:show, :edit, :update]
 
  # put '/posts/:id/likes', to: 'posts#like', as: 'like'
  # delete 'posts/:id/likes', to: 'likes#destroy', as: 'unlikes'
end

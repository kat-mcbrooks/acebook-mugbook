Rails.application.routes.draw do
  get 'sign_in/index'
  post 'sign_in/index', to: "sign_in#welcome"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :posts
end

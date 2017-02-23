Rails.application.routes.draw do
  devise_for :users
  resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "pages#index"
  
end

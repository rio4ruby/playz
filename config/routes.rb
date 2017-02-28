Rails.application.routes.draw do
  devise_for :users
  resources :pages

  resources :home, only: [:index]
  get 'home/search'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :artist, only: [:show]

  resources :audio_files, only: [] do
    member do
      get 'add'
    end
  end

  resources :artists, only: [] do
    resources :albums, only: [] do
      get 'add'
    end
  end

  resources :albums, only: [:show] do
    member do
      get 'image'
      get 'add'
    end
  end
  
  root to: "pages#index"
  
end

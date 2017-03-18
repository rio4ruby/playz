# frozen_string_literal: true
Rails.application.routes.draw do
  resources :playlists
  devise_for :users
  resources :pages

  get 'pages/home'

  resources :home, only: [:index]
  get 'home/home'
  get 'home/search'
  get 'home/search_form'
  get 'home/search_results'
  get 'home/playlist'

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

  get 'list_nodes/clear'
  get 'list_nodes/flatten'
  get 'list_nodes/move_to'
  get 'list_nodes/add_to_playing'
  post 'list_nodes/playlist_playable_items'
  resources :list_nodes, only: [:index, :destroy]

  root to: 'home#index'
end

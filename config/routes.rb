Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :songs
  resources :artists, only: [:new, :create, :show] do
    resources :songs, only: [:new, :create]
  end

  resources :songs, only: [:new]
  resources :users, only: [:new, :create, :show]
  namespace :admin do
    resources :categories, only: [:index]
  end

  resources :carts, only: [:create]

  root "welcome#index"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end

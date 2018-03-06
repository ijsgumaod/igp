Rails.application.routes.draw do
  root to: 'dashboard#index'

  mount ActionCable.server => '/cable'

  resources :sessions, only: [:new, :create, :destroy]
  resources :dashboard, only: [:index] do
    collection do
      get 'online_users'
    end
  end

  #resources :reservations
  get "/reservations/", to: 'reservations#index', as: :reservations
  get '/reservations/reserve', to: 'reservations#new', as: :reserve

  get '/login', to: 'sessions#new', as: :login
  delete '/logout', to: 'sessions#destroy', as: :logout

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

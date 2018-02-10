Rails.application.routes.draw do
  get 'reservation/index'

  root to: 'dashboard#index'

  mount ActionCable.server => '/cable'

  resources :sessions, only: [:new, :create, :destroy]
  resources :dashboard do
    collection do
      get 'online_users'
    end
  end
  
  resources :reservations

  get '/log_in', to: 'sessions#new', as: :log_in
  delete '/log_out', to: 'sessions#destroy', as: :log_out

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

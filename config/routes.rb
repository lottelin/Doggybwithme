Rails.application.routes.draw do
  get 'bookings/create'
  devise_for :users
  root to: 'pages#home'

  get '/profile', to: 'pages#profile', as: :profile

  resources :dogs do
    resources :bookings, only: [:create]
  end  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

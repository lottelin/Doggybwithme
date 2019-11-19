Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/dogs/new' => 'controller#new'
  post '/dogs' => 'controller#create'

end

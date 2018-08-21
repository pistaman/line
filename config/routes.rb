Rails.application.routes.draw do
  # root 'rooms#index'
  post '/create', to: 'rooms#create'
  get 'room/:id', to: 'rooms#show'
  devise_for :users
end

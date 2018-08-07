Rails.application.routes.draw do
  get '/', to: 'rooms#index'
  post '/', to: 'rooms#create'
  get 'room/:id', to: 'rooms#show'
  devise_for :users
  mount ActionCable.server => '/cable'
end

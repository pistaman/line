Rails.application.routes.draw do
  get 'rooms/:id', to: 'rooms#show'
  devise_for :users
  mount ActionCable.server => '/cable'
end

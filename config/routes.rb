Rails.application.routes.draw do
  resources :channels, only: [:index, :show]
  resources :messages, only: [:index, :create]
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'lists/index'
  devise_for :users
  root "lists#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :edit, :update]
  resources :lists, only: [:index, :new, :create, :show]

end

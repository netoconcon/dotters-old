Rails.application.routes.draw do
  get 'athletes/index'
  get 'athletes/show'
  get 'athletes/new'
  get 'athletes/create'
  get 'athletes/edit'
  get 'athletes/update'
  get 'athletes/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :teams
  get 'home', to: 'pages#home'
  get 'live', to: 'pages#live'
  get 'rank', to: 'pages#rank'
end

Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home', to: 'pages#home'
  get 'live', to: 'pages#live'
  get 'teams', to: 'pages#teams'
  get 'rank', to: 'pages#rank'
end

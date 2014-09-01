Rails.application.routes.draw do

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :sessions, :except => [:index, :edit, :show]
  resources :users, :except => [:index, :edit, :show]

  root :to => 'links#index'
  resources :links, :except => [:show]
  resources :comments, :except => [:edit, :show]

end

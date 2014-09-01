Rails.application.routes.draw do

  resources :users

  root :to => 'links#index'
  resources :links, :except => [:show]
  resources :comments

end

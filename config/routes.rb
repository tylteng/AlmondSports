Rails.application.routes.draw do

  resources :articles
  resources :users

  root :to => 'articles#home'

end

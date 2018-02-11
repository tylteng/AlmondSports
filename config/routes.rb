Rails.application.routes.draw do

  resources :articles
  resources :users
  resource :sessions, only: [:new, :create, :destroy]

  root :to => 'articles#home'
  get '/about' => 'articles#about_us'

end

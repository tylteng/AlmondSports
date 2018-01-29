Rails.application.routes.draw do

  get '/', :to => 'articles#home'
  get '/home', :to => 'articles#home'
  resources :articles
  resources :users

end

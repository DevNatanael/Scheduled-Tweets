Rails.application.routes.draw do

 get "about", to:"about#index" #fazendo a rota about que aponta para os controllers

  root to:"main#index" #rota raiz

  # Defines the root path route ("/")
  # root "articles#index"
end
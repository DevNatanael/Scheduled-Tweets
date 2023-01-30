Rails.application.routes.draw do

 get "about", to:"about#index" #fazendo a rota about que aponta para os controllers

 #atualizar senha
 get "password", to: "passwords#edit", as: :edit_password
 patch "password", to: "passwords#update"

 get "sign_up", to: "registrations#new"
 post "sign_up", to: "registrations#create"

 delete "logout", to: "sessions#destroy"
 get "sign_in", to: "sessions#new"
 post "sign_in", to: "sessions#create"


 root to:"main#index" #rota raiz

  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do

 get "about", to:"about#index" #fazendo a rota about que aponta para os controllers

 #atualizar senha
 get "password", to: "passwords#edit", as: :edit_password
 patch "password", to: "passwords#update"

 get "password/reset", to: "password_resets#new"
 post "password/reset", to: "password_resets#create"
 get "password/reset/edit", to: "password_resets#edit"
 patch "password/reset/edit", to: "password_resets#update"

 #criar usuário
 get "sign_up", to: "registrations#new"
 post "sign_up", to: "registrations#create"

 #login e logout de usuário
 delete "logout", to: "sessions#destroy"
 get "sign_in", to: "sessions#new"
 post "sign_in", to: "sessions#create"


 root to:"main#index" #rota raiz

  # Defines the root path route ("/")
  # root "articles#index"
end

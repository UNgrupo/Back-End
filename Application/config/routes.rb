Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # ruta de usuarios para las peticiones http
  resources :users, expect: [:delete]
=begin
    get "/users" index
    post "users" create
    delete "/users" delete
    get "/users/:id" show
    get "/users/:new" new
    get "/users/:id/edit" edit
    patch "users/:id" update
    put "users" update
=end

  # ruta de comentarios para las peticiones http
  resources :comments

  # ruta de respuestas para las peticiones http
  resources :answers


  # ruta de preguntas para las peticiones http
  resources :questions


  # ruta de temas para las peticiones http
  resources :themes

end

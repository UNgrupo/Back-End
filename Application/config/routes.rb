Rails.application.routes.draw do

  resources :answers
  resources :comments
  resources :documents
  resources :questions
  resources :statistics
  resources :subjects
  resources :topics
  resources :users
 
end

Rails.application.routes.draw do
  #root page
  root 'pages#home'
  get 'pages/home'
  get 'pages/about'
  get 'pages/instruments'
  get 'pages/lessons'
  get 'pages/formaGroup'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

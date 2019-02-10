Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  #for session/registration etc.
  devise_for :users
 
  #it's a root page, when you open site - you see it, example cafe.com or localhost:3000
  root 'pages#index'
 
  resources :products

  resources :comments

end

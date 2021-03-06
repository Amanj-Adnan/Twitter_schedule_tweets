Rails.application.routes.draw do
  root  "home#show"

  get "password" ,to: "passwords#edit"
  patch "password" ,to: "passwords#update"

  get "sign_up" , to: "register#create"
  post "sign_up" , to: "register#created"

  get "sign_in" , to: "sign_in#new"
  post "sign_in" , to: "sign_in#create"


  delete "logout", to: "logout#destroy"

  get "password/reset" , to: "password_reset#new"
  post "password/reset" , to: "password_reset#create"

  get "password/reset/edit" , to: "password_reset#edit"
  patch "password/reset/edit" , to: "password_reset#update"

  get "/auth/twitter/callback" , to: "omniauth_callback#twitter"

  resources :twitter_accounts
  resources :twitts


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

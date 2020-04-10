Rails.application.routes.draw do
  resources :todos
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "users/login", to: "users#check"
end

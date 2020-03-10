Rails.application.routes.draw do
  post "users/login", to: "users#check"
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :todos
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :players

  # Defines the root path route ("/")
  root "players#index"
  # get "players/:id/edit"
end

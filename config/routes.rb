Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :dinosaurs, only: %i[index show] do
    resources :bookings, only: :create
  end
  resources :my_bookings, only: :index
  resources :my_dinosaurs, only: %i[index new create]
  resources :my_rents, only: :index do
    member do
      patch :accept
      patch :deny
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'tools#main'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tools, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :reviews, onyl: [:create]
  end

  # post "/tool/:tool_id/reviews/", to: "reviews#create", as: :tool_reviews

  get "/dashboard", to: "pages#dashboard"

  post "/bookings/:tool_id", to: "bookings#create", as: :bookings_create
  get "/bookings/:tool_id", to: "bookings#index"

  get "/bookings", to: "bookings#index"
  delete "bookings/", to: "bookings#destroy_multiple", as: :destroy_mulitple_bookings

  patch "bookings/:id/accept", to: "bookings#accept", as: :accept_booking
  patch "bookings/:id/decline", to: "bookings#decline", as: :decline_booking


end

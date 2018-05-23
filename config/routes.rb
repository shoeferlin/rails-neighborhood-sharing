Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tools, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  get "/dashboard", to: "pages#dashboard"

  # get "tools/:tool_id/", to: "tools#update_status", as: :update_status
  # get "/toolbox", to: "tools#toolbox", as: :toolbox

  post "/bookings/:tool_id", to: "bookings#create", as: :bookings_create

  get "/bookings/:tool_id", to: "bookings#index"
  # post "/bookings"

  patch "bookings/:id/accept", to: "bookings#accept", as: :accept_booking
  patch "bookings/:id/decline", to: "bookings#decline", as: :decline_booking

end

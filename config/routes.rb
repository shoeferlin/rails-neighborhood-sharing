Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'tools#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tools, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  get "/dashboard", to: "pages#dashboard"

  get "tools/:tool_id/", to: "tools#update_status", as: :update_status
  get "/toolbox", to: "tools#toolbox", as: :toolbox

  post "/bookings/:tool_id", to: "bookings#create", as: :bookings_create
  get "/bookings", to: "bookings#index"


end

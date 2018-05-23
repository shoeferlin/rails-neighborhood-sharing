Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tools, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  get "tools/:tool_id/message", to: "tools#message", as: :message
  get "/dashboard", to: "pages#dashboard"

  get "/toolbox", to: "tools#toolbox", as: :toolbox

end

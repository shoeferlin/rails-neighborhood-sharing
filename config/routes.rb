Rails.application.routes.draw do
  devise_for :users
  root to: 'tools#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tools, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  get "tools/:tool_id/message", to: "tools#message", as: :message

end

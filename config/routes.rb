Rails.application.routes.draw do
  devise_for :users
  root to: 'tools#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tools, only: [:index, :show, :new, :create, :destroy]
end

Rails.application.routes.draw do
  root to: "prototypes#index"
  devise_for :users
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments,only: [:create]
  end
    resources :users,only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

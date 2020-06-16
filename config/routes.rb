Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :offers, only: [:index, :show, :create, :new]
  resources :categories, only: [:index]
  resources :bookings, only: [:new, :create, :show] do 
    resources :reviews, only: [:create, :new]
  end
end

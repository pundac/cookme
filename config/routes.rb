Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
  resources :categories, only: [:index]
  resources :offers, only: [:index, :show, :create, :new, :destroy] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show] do 
    resources :reviews, only: [:create, :new]
  end
end

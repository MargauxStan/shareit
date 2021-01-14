Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  
  get "/accueil", to: "pages#accueil", as: 'accueil'
  resources :items do
    resources :bookings, only: [:index, :new, :create, :show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  

  get 'userlist/index'
  get 'userlist/userbooking'
  

  resources :hotels do
    resources :ratings
  end

  get 'bookings/accept'
  resources :bookings

  get 'booking/bookinglist', to: "bookings#bookinglist"


  resources :pages
 

  root to: 'pages#home'
  get 'search', to: "hotels#search"
  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks"}
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

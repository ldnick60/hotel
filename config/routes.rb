Rails.application.routes.draw do

  resources :user_infos
  resources :bookings
  resources :rooms
  root 'pages#home'

  get 'home',  to:'pages#home'
  get 'contact', to:'pages#contact'
  get 'gallery', to:'pages#gallery'

  devise_for :users
  root 'booking#booking'
  get 'booking', to: 'booking#booking'
  get 'new', to:'bookings#new'
  post 'request_contact', to:'pages#request_contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

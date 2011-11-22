Ttlunch2012::Application.routes.draw do
  resources :table_bookings

  resources :nominations

  resources :rsvp

  resources :brochures

  get "overview" => 'home#overview'
  get 'about' => 'home#about'
  get 'package' => 'home#package'
  get 'flight' => 'home#flight'
  root :to => "home#index"
end

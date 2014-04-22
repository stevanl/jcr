Ttlunch2012::Application.routes.draw do

  resources :brochures

  resources :registrations

  get "overview" => 'home#overview'
  get 'about' => 'home#about'
  get 'package' => 'home#package'
  get 'itinerary' => 'home#itinerary'
  get 'flights' => 'home#flights'
  get 'sponsors' => 'home#sponsors'
  get 'history' => 'home#history'
  root :to => "home#index"
end

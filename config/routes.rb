Ttlunch2012::Application.routes.draw do

  resources :registrations

  get "overview" => 'home#overview'
  get 'about' => 'home#about'
  get 'package' => 'home#package'
  get 'flight' => 'home#flight'
  root :to => "home#index"
end

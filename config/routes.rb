Ttlunch2012::Application.routes.draw do

  resources :registrations

  get "overview" => 'home#overview'
  get 'about' => 'home#about'
  get 'package' => 'home#package'
  get 'flights' => 'home#flights'
  root :to => "home#index"
end

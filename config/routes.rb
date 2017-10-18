Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch 'pokemon/capture' => 'pokemons#capture', :as => :capture
end

Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch 'pokemon/capture' => 'pokemons#capture', :as => :capture
  patch 'pokemon/damage' => 'pokemons#damage', :as => :damage
  get 'pokemon/new' => 'pokemons#new'
  post 'pokemon/create' => 'pokemons#create'
end

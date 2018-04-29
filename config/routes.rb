Rails.application.routes.draw do
  root 'pokemons#index'
  devise_for :users
  resources :abilities
  resources :pokemon_abilities
  resources :pokemons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root 'pokemons#index'
  devise_for :users
  resources :abilities
  resources :pokemon_abilities
  resources :pokemons

  scope '/api' do
    scope '/v1' do
      scope '/pokemons' do
        get '/' => 'api_pokemons#index'
        post '/' => 'api_pokemons#create'
        scope '/:name' do
          get '/' => 'api_pokemons#show'
          put '/' => 'api_pokemons#update'
        end
      end
    end
  end
end

json.extract! pokemon, :id, :id, :name, :speciies_id, :height, :weight, :base_experience, :order, :is_default, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)

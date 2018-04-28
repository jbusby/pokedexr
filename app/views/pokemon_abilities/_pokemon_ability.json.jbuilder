json.extract! pokemon_ability, :id, :pokemon_id, :ability_id, :is_hidden, :slot, :created_at, :updated_at
json.url pokemon_ability_url(pokemon_ability, format: :json)

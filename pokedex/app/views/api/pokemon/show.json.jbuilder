
# right now we have access to @pokemon


json.pokemon @pokemon, :id,:attack, :defense, :image_url, :moves, :poke_type
json.items @pokemon.items do |item|
  json.extract! item, :id, :name, :pokemon_id, :price, :happiness, :image_url
end


# create_table "pokemons", force: :cascade do |t|
#   t.string "name", null: false
#   t.integer "attack", null: false
#   t.integer "defense", null: false
#   t.string "poke_type", null: false
#   t.string "moves", default: [], null: false, array: true
#   t.string "image_url", null: false
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end

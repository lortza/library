json.array!(@games) do |game|
  json.extract! game, :id, :title, :author, :description, :release_date
  json.url game_url(game, format: :json)
end

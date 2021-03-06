json.array!(@albums) do |album|
  json.extract! album, :id, :title, :band_name, :description, :release_date
  json.url album_url(album, format: :json)
end

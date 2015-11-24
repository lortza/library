json.array!(@user_albums) do |user_album|
  json.extract! user_album, :id, :user_id, :album_id
  json.url user_album_url(user_album, format: :json)
end

json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :description, :rating, :release_date, :director
  json.url movie_url(movie, format: :json)
end

json.array!(@directivos) do |directivo|
  json.extract! directivo, :id, :nombre, :cargo, :foto
  json.url directivo_url(directivo, format: :json)
end

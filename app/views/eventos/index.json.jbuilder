json.array!(@eventos) do |evento|
  json.extract! evento, :id, :titulo, :lugar, :fecha, :link
  json.url evento_url(evento, format: :json)
end

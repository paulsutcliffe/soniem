json.array!(@noticias) do |noticia|
  json.extract! noticia, :id, :titulo, :fecha, :imagen, :contenido
  json.url noticia_url(noticia, format: :json)
end

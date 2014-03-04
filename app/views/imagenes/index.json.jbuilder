json.array!(@imagenes) do |imagen|
  json.extract! imagen, :id, :imagen
  json.url imagen_url(imagen, format: :json)
end

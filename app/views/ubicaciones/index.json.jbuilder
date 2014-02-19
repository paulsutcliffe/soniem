json.array!(@ubicaciones) do |ubicacion|
  json.extract! ubicacion, :id, :lat, :lng, :direccion
  json.url ubicacion_url(ubicacion, format: :json)
end

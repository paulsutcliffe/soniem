json.array!(@informaciones) do |informacion|
  json.extract! informacion, :id, :titulo, :foto, :descripcion
  json.url informacion_url(informacion, format: :json)
end

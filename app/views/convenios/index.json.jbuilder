json.array!(@convenios) do |convenio|
  json.extract! convenio, :id, :nombre, :descripcion
  json.url convenio_url(convenio, format: :json)
end

json.array!(@socios) do |socio|
  json.extract! socio, :id, :nombre, :contenido, :fotografia, :web, :twitter, :facebook, :soundcloud
  json.url socio_url(socio, format: :json)
end

json.array!(@comunicados) do |comunicado|
  json.extract! comunicado, :id, :titulo, :contenido, :fecha, :pdf
  json.url comunicado_url(comunicado, format: :json)
end

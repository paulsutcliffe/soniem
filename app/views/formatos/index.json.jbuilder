json.array!(@formatos) do |formato|
  json.extract! formato, :id, :pdf, :titulo
  json.url formato_url(formato, format: :json)
end

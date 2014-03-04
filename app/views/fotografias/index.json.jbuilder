json.array!(@fotografias) do |fotografia|
  json.extract! fotografia, :id, :fotografia
  json.url fotografia_url(fotografia, format: :json)
end

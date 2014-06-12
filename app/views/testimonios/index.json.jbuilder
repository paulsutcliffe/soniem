json.array!(@testimonios) do |testimonio|
  json.extract! testimonio, :id, :nombre, :mensaje
  json.url testimonio_url(testimonio, format: :json)
end

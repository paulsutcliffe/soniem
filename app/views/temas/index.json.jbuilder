json.array!(@temas) do |tema|
  json.extract! tema, :id, :titulo, :ano, :duracion, :formato
  json.url tema_url(tema, format: :json)
end

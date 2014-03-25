json.array!(@temas_no_registrados) do |tema_no_registrado|
  json.extract! tema_no_registrado, :id, :titulo, :autor
  json.url tema_no_registrado_url(tema_no_registrado, format: :json)
end

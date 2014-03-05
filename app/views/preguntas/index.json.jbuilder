json.array!(@preguntas) do |pregunta|
  json.extract! pregunta, :id, :pregunta, :respuesta
  json.url pregunta_url(pregunta, format: :json)
end

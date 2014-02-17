Cuando(/^lleno el formulario con los datos del tema$/) do
  fill_in "Titulo", with: "titulo"
  fill_in "Año", with: "año"
  fill_in "Duracion", with: "duracion"
  fill_in "Formato", with: "formato"
end

Dado(/^que existe un tema$/) do
  Tema.create(titulo: "titulo",
              año: "año",
              duracion: "duracion",
              formato: "formato",
              socio_id: "1").save!
end

Dado(/^que existe el tema con titulo "(.*?)" con año "(.*?)" con duracion "(.*?)" con formato "(.*?)"$/) do |titulo, año, duracion, formato|
  Tema.create(titulo: titulo,
              año: año,
              duracion: duracion,
              formato: formato,
              socio_id: "1").save!
end

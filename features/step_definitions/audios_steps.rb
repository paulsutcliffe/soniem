Cuando(/^lleno el formulario con los datos del audio$/) do
  fill_in "Titulo", with: "titulo"
  fill_in "Audio", with: "audio"
end

Dado(/^que existe un audio$/) do
  Audio.create(titulo: "titulo",
               audio: "audio",
               socio_id: "1").save!
end

Dado(/^que existe el audio con titulo "(.*?)" con audio "(.*?)"$/) do |titulo, audio|
  Audio.create(titulo: titulo,
               audio: audio,
               socio_id: "1").save!
end

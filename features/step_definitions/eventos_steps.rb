Cuando(/^lleno el formulario con los datos de evento$/) do
  fill_in "Titulo", with: "titulo"
  fill_in "Fecha", with: "fecha"
  fill_in "Link", with: "Link"
end

Dado(/^que existe un evento$/) do
  Evento.create(titulo: "titulo",
                fecha: "fecha",
                link: "link").save!
end

Cuando(/^uso la fecha "(.*?)"$/) do |valor|
  fill_in "Fecha", with: valor
end

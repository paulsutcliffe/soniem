Cuando(/^lleno el formulario con los datos del comunicado$/) do
  fill_in "Titulo", with: "Nuevo comunicado"
  fill_in "Contenido", with: "Contenido"
  fill_in "Fecha", with: "Fecha"
  attach_file("Pdf", File.expand_path("features/support/welcome.pdf"))
end

Dado(/^que existe un comunicado$/) do
  Comunicado.create(titulo: "Nuevo comunicado",
                    contenido: "Contenido",
                    fecha: "fecha",
                    pdf: File.new("features/support/welcome.pdf")).save!
end

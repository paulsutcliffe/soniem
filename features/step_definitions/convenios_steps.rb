nombre = "ANDI"
descripcion = "Asociadocion Nacional De Interpretes de mexico"
Cuando(/^lleno el formulario con los datos de convenio$/) do
  fill_in "Nombre", with: nombre
  fill_in "Descripcion", with: descripcion
end

Dado(/^que existe un convenio$/) do
  Convenio.create(nombre: nombre,
                  descripcion: descripcion).save!
end

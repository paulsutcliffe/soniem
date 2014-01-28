Cuando(/^lleno el formulario con los datos del directivo$/) do
  fill_in "Nombre", with: "Walter Humala Lema"
  fill_in "Cargo", with: "Vice presidente"
  attach_file("Foto", File.expand_path("features/support/foto_directivo1.jpg"))
end

Dado(/^que existe un directivo$/) do
  Directivo.create(nombre: "Walter Humala Lema",
                   cargo: "Vice presidente",
                   foto: File.new("features/support/foto_directivo1.jpg")).save!
end

Cuando(/^uso el nombre "(.*?)"$/) do |valor|
  fill_in "Nombre", with: valor
end

Cuando(/^uso el cargo "(.*?)"$/) do |cargo|
  fil_in "cargo", with: cargo
end

Cuando(/^uso la foto "(.*?)"$/) do |archivo|
  attach_file("Foto", File.expand_path("features/support/" + archivo))
end

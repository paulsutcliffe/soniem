Cuando(/^lleno el formulario con los datos del slide$/) do
  attach_file("Imagen", File.expand_path("features/support/slide1.jpg"))
end

Dado(/^que existe un slide$/) do
  Slide.create(imagen: File.new("features/support/slide1.jpg")).save!
end

Cuando(/^uso la imagen "(.*?)"$/) do |archivo|
  attach_file("Imagen", File.expand_path("features/support/" + archivo))
end
Dado(/^que existe el slide "(.*?)"$/) do |imagen|
  Slide.create(imagen: File.new("features/support/#{imagen}")).save!
end

Cuando(/^lleno el formulario con los datos de noticia$/) do
  fill_in "Titulo", with: "MARCA PERU"
  fill_in "Subtitulo", with: "¿QUÉ ES Y CÓMO NACE?"
  fill_in "Contenido", with: "La nueva marca Perú es un logo de colores blanco y rojo, con una forma geométrica en espiral, símbolo que ha estado presente en nuestras distintas culturas. “La letra P hace alusión no solo a las Líneas de Nasca. El espiral que la forma también lo vemos en Caral y es un símbolo universal de continuidad. Al centro hay una arroba que es símbolo de modernidad y que en un trazo continuo forma la palabra Perú”, explicó Ferreyros. UNA SOLA IDENTIDAD También contó que su creación se inició en la gestión de Mercedes Aráoz, cuando se vio la necesidad de tener una marca que nos posicione en el extranjero para atraer turistas e inversiones. “Antes habían logos para cada tema, pero la idea fue unificar y crear una sola identidad”, indicó Ferreyros. Agregó que la idea es transmitir que el Perú ofrece muchas cosas, que es sólido y moderno. Ferreyros dijo estar seguro de que esta marca país continuará en los próximos gobiernos pues se trata de un trabajo técnico."
  attach_file("Imagen", File.expand_path("features/support/imagen_noticia2.jpg"))
  fill_in "Fecha", with: "29-01-2014"
end

Dado(/^que existe una noticia$/) do
  Noticia.create(titulo: "MARCA PERU",
                 subtitulo: "¿QUÉ ES Y CÓMO NACE?",
                 contenido: "La nueva marca Perú es un logo de colores blanco y rojo, con una forma geométrica en espiral, símbolo que ha estado presente en nuestras distintas culturas. “La letra P hace alusión no solo a las Líneas de Nasca. El espiral que la forma también lo vemos en Caral y es un símbolo universal de continuidad. Al centro hay una arroba que es símbolo de modernidad y que en un trazo continuo forma la palabra Perú”, explicó Ferreyros. UNA SOLA IDENTIDAD También contó que su creación se inició en la gestión de Mercedes Aráoz, cuando se vio la necesidad de tener una marca que nos posicione en el extranjero para atraer turistas e inversiones. “Antes habían logos para cada tema, pero la idea fue unificar y crear una sola identidad”, indicó Ferreyros. Agregó que la idea es transmitir que el Perú ofrece muchas cosas, que es sólido y moderno. Ferreyros dijo estar seguro de que esta marca país continuará en los próximos gobiernos pues se trata de un trabajo técnico.",
                 imagen: File.new("features/support/imagen_noticia2.jpg"),
                 fecha: "29-01-2014").save!
end

Cuando(/^uso el titulo "(.*?)"$/) do |valor|
  fill_in "titulo", with: valor
end

Dado(/^que existe la noticia con imagen "(.*?)" con título "(.*?)" con fecha "(.*?)" con contenido "(.*?)"$/) do |imagen, titulo, fecha, contenido|
  Noticia.create(imagen: File.new("features/support/#{imagen}"),
                 titulo: titulo,
                 fecha: fecha,
                 contenido: contenido).save!
end
Entonces(/^debería ver la imagen "(.*?)"$/) do |archivo|
  page.should have_xpath("//img[contains(@src, \"#{archivo}\")]")
end

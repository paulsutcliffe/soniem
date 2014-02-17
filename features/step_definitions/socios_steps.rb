Cuando(/^lleno "(.*?)" con "(.*?)"$/) do |campo, valor|
  fill_in(campo, :with => valor)
end

Dado(/^que existe un socio$/) do
  Socio.create(nombre: "adriel",
               contenido: "contenido",
               fotografia: File.new("features/support/foto_directivo1.jpg"),
               email: "email",
               web: "web",
               facebook: "facebook",
               soundcloud: "soundcloud",
               twitter: "twitter").save!
  
end

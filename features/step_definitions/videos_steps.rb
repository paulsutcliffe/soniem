Cuando(/^lleno el formulario con los datos del video$/) do
  fill_in "Link", with: "http://vimeo.com/85217548"
end

Dado(/^que existe un video$/) do
  Video.create(link: "http://vimeo.com/85217548").save!
end

Cuando(/^uso el link "(.*?)"$/) do |valor|
  fill_in "Link", with: valor
end

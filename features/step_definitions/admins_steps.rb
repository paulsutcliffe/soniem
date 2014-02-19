#Coding: utf-8
email = 'adriel@domain.com'
password = '12345678'
Dado(/^que existe un administrador$/) do
  Admin.new(email: email, password: password, password_confirmation: password).save!
end

Dado(/^que estoy en la página inicial$/) do
  visit('/inicio/index')
end

Cuando(/^visito "(.*?)"$/) do |pagina|
  visit(pagina)
end

Cuando(/^lleno el formulario con los datos del administrador$/) do
  fill_in "Email", with: email
  fill_in "Contraseña", with: password
end

Cuando(/^presiono "(.*?)"$/) do |boton|
  click_button(boton)
end

Entonces(/^debería ver "(.*?)"$/) do |resultado|
  page.should have_content(resultado)
end

Dado(/^que he iniciado sesión como administrador$/) do
  Admin.new(:email => email, :password => password, :password_confirmation => password).save!
  visit('/cms/ingresar')
  fill_in "Email", :with => email
  fill_in "Contraseña", :with => password
  click_button('Ingresar')
end

Cuando(/^hago click en "(.*?)"$/) do |link|
  click_link(link)
end

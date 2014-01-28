#Coding: utf-8
nombre = 'adriel'
email = 'adriel@kosmyka.com'
telefono = '123456789'
mensaje = 'hola'
Dado(/^lleno el formulario de contacto con los datos del mensaje$/) do
  fill_in "Nombre", with: nombre
  fill_in "Email", with: email
  fill_in "Telefono", with: telefono
  fill_in "Mensaje", with: mensaje
end

Dado(/^que existe un mensaje$/) do
  Contacto.create(nombre: nombre,
                  email: email,
                  telefono: telefono,
                  mensaje: mensaje).save!
end

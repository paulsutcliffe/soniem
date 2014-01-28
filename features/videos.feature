#language: es

Característica: Administracion de los videos de la web

Escenario: Crear video
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Videos"
  Y hago click en "Crear Video"
  Y lleno el formulario con los datos del video
  Y presiono "Guardar"
  Entonces debería ver "Video creado con éxito."

Escenario: Editar video
  Dado que existe un video
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Videos"
  Y hago click en "Editar"
  Y uso el link "http://vimeo.com/timsessler/jhalak"
  Y presiono "Guardar"
  Entonces debería ver "El video ha sido editado."

Escenario: Eliminar video
  Dado que existe un video
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Videos"
  Y hago click en "Eliminar"
  Entonces debería ver "El video ha sido eliminado."


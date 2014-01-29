#language: es

Característica: Administracion de las noticias de la web

Escenario: Crear Noticia
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Noticias"
  Y hago click en "Crear Noticia"
  Y lleno el formulario con los datos de noticia
  Cuando presiono "Guardar"
  Entonces debería ver "Noticia creada con éxito."

Escenario: Editar Noticia
  Dado que existe una noticia
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Noticias"
  Y hago click en "Editar"
  Y uso el titulo "Nueva noticia"
  Y uso la imagen "imagen_noticia1.jpg"
  Cuando presiono "Guardar"
  Entonces debería ver "La noticia se ha editado."

Escenario: Eliminar Noticia
  Dado que existe una noticia
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Noticias"
  Y hago click en "Eliminar"
  Entonces debería ver "La noticia se ha eliminado."

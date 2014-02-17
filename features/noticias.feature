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

Esquema del escenario: las noticias pueden verse en la página de inicio
  Dado que existe la noticia con imagen "<imagen>" con título "<titulo>" con fecha "<fecha>" con contenido "<contenido>"
  Y que estoy en la página inicial
  Entonces debería ver la imagen "<imagen>"

  Ejemplos:
    | imagen              | titulo    | fecha      | contenido   |
    | imagen_noticia1.jpg | noticia 1 | 03-02-2014 | contenido 1 |
    | imagen_noticia2.jpg | noticia 2 | 03-02-2014 | contenido 2 |

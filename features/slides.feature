#language: es

Característica: Administracion de los slides de la web

Escenario: Crear slide
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Slides"
  Y hago click en "Crear slide"
  Y lleno el formulario con los datos del slide
  Y presiono "Guardar"
  Entonces debería ver "El slide ha sido creado con éxito."

Escenario: Editar slide
  Dado que existe un slide
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Slides"
  Y hago click en "Editar"
  Y uso la imagen "slide2.jpg"
  Y presiono "Guardar"
  Entonces debería ver "El slide se ha editado"

Escenario: Eliminar slide
  Dado que existe un slide
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Slides"
  Y hago click en "Eliminar"
  Entonces debería ver "El slide se ha eliminado"

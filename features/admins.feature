#language: es


Característica: administración de los contenidos de las web

Escenario: Ingresar como administrador
  Dado que existe un administrador
  Y que estoy en la página inicial
  Cuando visito "/cms/ingresar"
  Y lleno el formulario con los datos del administrador
  Cuando presiono "Ingresar"
  Entonces debería ver "Has iniciado sesión."

Escenario: Cerrar sesión
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Cerrar Sesión"
  Entonces debería ver "Has cerrado la sesión."


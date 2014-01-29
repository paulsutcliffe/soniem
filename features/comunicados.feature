#language: es

Característica: Administracion de los comunicados de la web

Escenario: Crear Comunicado
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Comunicados"
  Y hago click en "Crear Comunicado"
  Y lleno el formulario con los datos del comunicado
  Cuando presiono "Guardar"
  Entonces debería ver "Comunicado creado con éxito."

Escenario: Editar Comunicado
  Dado que existe un comunicado
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Comunicados"
  Y hago click en "Editar"
  Y uso el titulo "Nuevo comunicado"
  Y uso la fecha "29-01-2014"
  Cuando presiono "Guardar"
  Entonces debería ver "El comunicado ha sido editado."

Escenario: Eliminar Comunicado
  Dado que existe un comunicado
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Comunicados"
  Y hago click en "Eliminar"
  Entonces debería ver "El comunicado ha sido eliminado."

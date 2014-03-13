#language: es

Característica: Administracion de los eventos en la web

Escenario: Crear Evento
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Eventos"
  Y hago click en "Crear Evento"
  Y lleno el formulario con los datos de evento
  Cuando presiono "Guardar"
  Entonces debería ver "Evento creado con exitó."

Escenario: Editar Evento
  Dado que existe un evento
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Eventos"
  Y hago click en "Editar"
  Y uso el titulo "Nuevo evento"
  Cuando presiono "Guardar"
  Entonces debería ver "El evento se ha editado."

Escenario: Eliminar Evento
  Dado que existe un evento
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Eventos"
  Y hago click en "Eliminar"
  Entonces debería ver "El evento se ha eliminado."

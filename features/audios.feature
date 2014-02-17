#language: es

Característica: Administracion de los audios de los socios en la web

Escenario: Crear tema del socio
  Dado que existe un socio
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Socios"
  Y hago click en "El nombre del socio"
  Y hago click en "Crear tema"
  Y lleno el formulario con los datos del tema
  Y presiono "Guardar"
  Entonces debería ver "Tema creado con éxito."

Escenario: Editar tema
  Dado que existe un socio
  Y que existe un tema
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Socio"
  Y hago click en "El nombre del socio"
  Y hago click en "Editar tema"
  Y uso el nombre "nuevo tema"
  Y presiono "Guardar"
  Entonces debería ver "El tema ha sido editado."

Escenario: Eliminar tema
  Dado que existe un socio
  Y que existe un tema
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Socios"
  Y hago click en "El nombre del socio"
  Y hago click en "Eliminar tema"
  Entonces debería ver "El tema ha sido eliminado."


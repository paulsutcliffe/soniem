#language: es
@javascript
Característica: Administracion de los convenios en la web

Escenario: Crear Convenio
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando visito "Quienes Somos"
  Y hago click en "Convenios"
  Y hago click en "Crear convenio"
  Y lleno el formulario con los datos de convenio
  Y presiono "Guardar"
  Entonces debería ver "Convenio creado con éxito."

Escenario: Editar Convenio
  Dado que existe un convenio
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Quienes Somos"
  Y hago click en "Convenios"
  Y hago click en "Editar"
  Y uso el nombre "Nuevo convenio"
  Y presiono "Guardar"
  Entonces debería ver "El convenio se ha editado."

Escenario: Eliminar Convenio
  Dado que existe un convenio
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Quienes Somos"
  Y hago click en "Convenios"
  Y hago click en "Eliminar"
  Entonces debería ver "El convenio se eliminado."

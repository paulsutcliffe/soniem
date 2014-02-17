#language: es

Característica: Administracion de los audios de los socios en la web

Escenario: Crear audio del socio
  Dado que existe un socio
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Socios"
  Y hago click en "adriel"
  Y hago click en "Crear Audio"
  Y lleno el formulario con los datos del audio
  Y presiono "Guardar"
  Entonces debería ver "Audio creado con éxito."

Escenario: Editar audio
  Dado que existe un socio
  Y que existe un audio
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Socio"
  Y hago click en "adriel"
  Y hago click en "Editar Audio"
  Y uso el nombre "nuevo audio"
  Y presiono "Guardar"
  Entonces debería ver "El audio ha sido editado."

Escenario: Eliminar audio
  Dado que existe un socio
  Y que existe un audio
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Socios"
  Y hago click en "adriel"
  Y hago click en "Eliminar audio"
  Entonces debería ver "El audio ha sido eliminado."

Esquema del escenario: ver audios del socio en la web
  Dado que existe el audio con titulo "<titulo>" con audio "<audio>"
  Y que estoy en la página inicial
  Cuando hago click en "Socios"
  Y hago click en "adriel"
  Entonces debería ver "<titulo>"
  Y debería ver "<audio>"

Ejemplos:
    | titulo  | audio  |
    | titulo1 | audio1 |
    | titulo2 | audio2 |

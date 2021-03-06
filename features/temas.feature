#language: es

Característica: Administracion de los temas de los socios en la web

Escenario: Crear tema del socio
  Dado que existe un socio
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Socios"
  Y hago click en "adriel"
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
  Y hago click en "adriel"
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
  Y hago click en "adriel"
  Y hago click en "Eliminar tema"
  Entonces debería ver "El tema ha sido eliminado."

Esquema del escenario: ver temas del socio en la web
  Dado que existe el tema con titulo "<titulo>" con año "<año>" con duracion "<duracion>" con formato "<formato>"
  Y que estoy en la página inicial
  Cuando hago click en "Socios"
  Y hago click en "adriel"
  Entonces debería ver "<titulo>"
  Y debería ver "<año>"

Ejemplos:
    | titulo  | año  | duracion  | formato   |
    | titulo1 | 2010 | 3 minutos | formato 1 |
    | titulo2 | 2011 | 4 minutos | formato 2 |

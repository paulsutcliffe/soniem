#language: es

Característica: Administracion de los socios en la web

Esquema del escenario: Crear un socio
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Socios"
  Y hago click en "Crear Socio"
  Y lleno "Nombre" con "<nombre>"
  Y lleno "Contenido" con "<contenido>"
  Y lleno "Fotografia" con "<fotografia>"
  Y lleno "Email" con "<email>"
  Y lleno "Web" con "<web>"
  Y lleno "Facebook" con "<facebook>"
  Y lleno "Soundcloud" con "<soundcloud>"
  Y lleno "twitter" con "<twitter>"
  Entonces debería ver "Socio creado con éxito."

  Ejemplos:
    | nombre | contenido | fotografia      | email              | web | facebook | soundcloud | twitter |
    | adriel | contenido | foto_directivo1 | adriel@kosmyka.com | web | facebook | soundcloud | twitter |
    | juan   | contenido | foto_directivo2 | juan@hotmail.com   | web | facebook | soundcloud | twitter |

Escenario: Editar socio
  Dado que existe un socio
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Socios"
  Y hago click en "Editar"
  Y lleno "Nombre" con "nuevo socio"
  Y lleno "Contenido" con "contenido"
  Y presiono "Guardar"
  Entonces debería ver "El socio ha sido editado."

Escenario: Eliminar socio
  Dado que existe un socio
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Socios"
  Y hago click en "Eliminar"
  Entonces debería ver "El socio ha sido eliminado."

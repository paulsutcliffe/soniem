#language: es

Característica: Administracion de los directivos en la web

Escenario: Crear directivo
  Dado que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Directivos"
  Y hago click en "Crear Directivo"
  Y lleno el formulario con los datos del directivo
  Cuando presiono "Guardar"
  Entonces debería ver "Directivo creado con éxito."

Escenario: Editar directivo
  Dado que existe un directivo
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Directivo"
  Y hago click en "Editar"
  Y uso el nombre "Nuevo directivo"
  Y uso el cargo "Cargo"
  Y uso la foto "foto_directivo2.jpg"
  Cuando presiono "Guardar"
  Entonces debería ver "El directivo se ha editado."

Escenario: Eliminar Directivo
  Dado que existe un directivo
  Y que he iniciado sesión como administrador
  Y que estoy en la página inicial
  Cuando hago click en "Directivo"
  Y hago click en "Eliminar"
  Entonces debería ver "El directivo ha sido eliminado."

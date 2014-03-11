Soniem::Application.routes.draw do

  resources :preguntas

  resources :formatos

  get "informaciones/directivos"

  get "informaciones/convenios"

  resources :informaciones

  resources :fotografias

  resources :imagenes

  get "afiliacion/index"
  resources :audios

  resources :temas

  resources :eventos

  resources :ubicaciones

  resources :comunicados

  resources :contactos

  resources :noticias

  resources :slides

  resources :directivos

  resources :convenios

  devise_for :socios, :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }

  resources :socios

  root to: 'inicio#index'
  get "inicio/index"

  devise_for :admins, :path => "cms", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }
end

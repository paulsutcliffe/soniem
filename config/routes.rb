Soniem::Application.routes.draw do

  resources :slides

  resources :directivos

  resources :convenios

  get "quienes_somos/que_es_soniem"
  get "quienes_somos/como_funciona_soniem"
  get "quienes_somos/que_hace_soniem"
  get "quienes_somos/ley_del_artista"
  get "quienes_somos/organizacion"

  devise_for :socios, :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }

  resources :socios

  root to: 'inicio#index'
  get "inicio/index"

  devise_for :admins, :path => "cms", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }
end

class TemasNoRegistradosController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index]
  def permitted_params
    params.permit(:tema_no_registrado => [:titulo, :audio])
  end
  def create
    create!( notice: "Tema creado con éxito."){ temas_no_registrados_path }
  end

  def update
    update!( notice: "El tema ha sido editado."){ temas_no_registrados_path }
  end

  def destroy
    destroy!( notice: "El tema ha sido eliminado."){ temas_no_registrados_path }
  end
end

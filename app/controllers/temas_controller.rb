class TemasController < InheritedResources::Base
  before_filter :authenticate_admin!
  def permitted_params
    params.permit(:tema => [:titulo, :autor])
  end
  def create
    create!( notice: "Tema creado con éxito."){ temas_path }
  end

  def update
    update!( notice: "El tema ha sido editado."){ temas_path }
  end

  def destroy
    destroy!( notice: "El tema ha sido eliminado."){ temas_path }
  end
end

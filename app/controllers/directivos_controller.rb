class DirectivosController < InheritedResources::Base
  before_filter :authenticate_admin!
  def permitted_params
    params.permit(:directivo => [:nombre, :cargo, :foto])
  end
  def create
    create!( notice: "Directivo creado con éxito."){ informaciones_path }
  end

  def update
    update!( notice: "El directivo ha sido editado."){ informaciones_path }
  end

  def destroy
    destroy!( notice: "El directivo ha sido eliminado."){ informaciones_path }
  end
end

class DirectivosController < InheritedResources::Base
  def permitted_params
    params.permit(:directivo => [:nombre, :cargo, :foto])
  end
  def create
    create!( notice: "Directivo creado con éxito."){ directivos_path }
  end

  def update
    update!( notice: "El directivo ha sido editado."){ directivos_path }
  end

  def destroy
    destroy!( notice: "El directivo ha sido eliminado."){ directivos_path }
  end
end

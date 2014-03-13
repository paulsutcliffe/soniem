class ConveniosController < InheritedResources::Base
  def permitted_params
    params.permit(:convenio => [:nombre, :descripcion])
  end
  def create
    create!( notice: "Convenio creado con éxito."){ informaciones_path }
  end

  def update
    update!( notice: "El convenio ha sido editado."){ informaciones_path }
  end

  def destroy
    destroy!( notice: "El convenio ha sido eliminado."){ informaicones_path }
  end
end

class ComunicadosController < InheritedResources::Base
  def permitted_params
    params.permit(:comunicado => [:titulo, :fecha, :contenido, :pdf])
  end
  def create
    create!( notice: "Comunicado creado con éxito."){ comunicados_path }
  end

  def update
    update!( notice: "El comunicado ha sido editado."){ comunicados_path }
  end

  def destroy
    destroy!( notice: "El comunicado ha sido eliminado."){ comunicados_path }
  end
end

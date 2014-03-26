class EventosController < InheritedResources::Base
  def permitted_params
    params.permit(:evento => [:titulo, :lugar, :fecha, :link, :socio_id])
  end

  def create
    create!( notice: "Evento creado con éxito."){ eventos_path }
  end

  def update
    update!( notice: "El evento ha sido editada."){ eventos_path }
  end

  def destroy
    destroy!( notice: "El evento ha sido eliminada."){ eventos_path }
  end
end

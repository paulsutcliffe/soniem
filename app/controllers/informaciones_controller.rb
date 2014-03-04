class InformacionesController < InheritedResources::Base
  def permitted_params
    params.permit(:informacion => [:titulo, :foto, :descripcion])
  end
end

class UbicacionesController < InheritedResources::Base
  def permitted_params
    params.permit(:ubicacion => [:lat, :lng, :direccion])
  end
end

class UbicacionesController < InheritedResources::Base
  before_filter :authenticate_admin!, except:[:index]
  def permitted_params
    params.permit(:ubicacion => [:lat, :lng, :direccion])
  end
end

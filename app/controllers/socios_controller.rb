class SociosController < InheritedResources::Base
  def permitted_params
    params.permit(:socio => [:nombre, :contenido, :fotografia, :web, :facebook, :twitter, :soundcloud, fotografias_attributes: [:id, :fotografia, :_destroy]])
  end
end

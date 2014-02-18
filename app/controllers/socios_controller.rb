class SociosController < InheritedResources::Base
  def permitted_params
    params.permit(:socio => [:nombre, :contenido, :fotografia, :web, :facebook, :twitter, :soundcloud])
  end
end

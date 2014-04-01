class SociosController < InheritedResources::Base
  before_filter :authenticate_admin!, except:[:index, :show]
  def permitted_params
    params.permit(:socio => [:nombre, :contenido, :fotografia, :web, :facebook, :twitter, :soundcloud, fotografias_attributes: [:id, :fotografia, :_destroy], eventos_attributes: [:id, :titulo, :lugar, :fecha, :_destroy], temas_attributes: [:id, :titulo, :autor, :_destroy], audios_attributes: [:id, :titulo, :audio, :_destroy]])
  end

end

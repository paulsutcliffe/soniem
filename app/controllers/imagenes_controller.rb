class ImagenesController < InheritedResources::Base
  def permitted_params
    params.permit(:imagen => [:imagen, :noticia_id])
  end
end

class ImagenesController < InheritedResources::Base
  before_filter :authenticate_admin!
  def permitted_params
    params.permit(:imagen => [:imagen, :noticia_id])
  end
end

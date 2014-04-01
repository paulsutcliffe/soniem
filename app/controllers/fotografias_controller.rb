class FotografiasController < InheritedResources::Base
  before_filter :authenticate_admin!
  def permitted_params
    params.permit(:fotografia => [:fotografia, :socio_id])
  end
end

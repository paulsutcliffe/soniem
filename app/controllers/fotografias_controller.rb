class FotografiasController < InheritedResources::Base
  def permitted_params
    params.permit(:fotografia => [:fotografia, :socio_id])
  end
end

class FormatosController < InheritedResources::Base
  def permitted_params
    params.permit(:formato => [:titulo, :pdf])
  end
end

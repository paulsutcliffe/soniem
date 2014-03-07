class InformacionesController < InheritedResources::Base
  def permitted_params
    params.permit(:informacion => [:titulo, :foto, :descripcion])
  end

  def index
    @informaciones = Informacion.all
    @informacion = params[:informacion_id] ? Informacion.find(params[:informacion_id]) : Informacion.first
  end
  
  def show
    @informacion = Informacion.find(params[:id])
    respond_to do |format|
      #format.html
      format.js {}

      format.json { render json: @informacion }
    end
  end
end

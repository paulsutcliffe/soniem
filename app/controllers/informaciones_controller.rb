class InformacionesController < InheritedResources::Base
  def permitted_params
    params.permit(:informacion => [:titulo, :foto, :descripcion])
  end

  def index
    @informaciones = Informacion.order("titulo DESC")
    @informacion = params[:informacion_id] ? Informacion.find(params[:informacion_id]) : Informacion.first
    @directivos = Directivo.all
    @convenios = Convenio.all
  end
  
  def show
    @informacion = Informacion.find(params[:id])
    respond_to do |format|
      #format.html
      format.js {}

      format.json { render json: @informacion }
    end
  end
  def directivos
    @directivos = Directivo.all
    respond_to do |format|
      #format.html
      format.js {}

      format.json { render json: @directivos }
    end
  end
  def convenios
    @convenios = Convenio.all
    respond_to do |format|
      #format.html
      format.js {}

      format.json { render json: @convenios  }
    end
  end
end

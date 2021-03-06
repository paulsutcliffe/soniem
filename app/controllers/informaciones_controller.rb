class InformacionesController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index, :show, :directivos, :convenios]
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
  def create
    create!( notice: "Información creada con éxito."){ informaciones_path }
  end

  def update
    update!( notice: "La información ha sido editado."){ informaciones_path }
  end

  def destroy
    destroy!( notice: "La información ha sido eliminada."){ informaicones_path }
  end
end

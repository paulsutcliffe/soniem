class PreguntasController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index]
  def permitted_params
    params.permit(:pregunta => [:pregunta, :respuesta])
  end
end

class PreguntasController < InheritedResources::Base
  def permitted_params
    params.permit(:pregunta => [:pregunta, :respuesta])
  end
end

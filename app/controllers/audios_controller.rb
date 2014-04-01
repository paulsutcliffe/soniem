class AudiosController < InheritedResources::Base
  before_filter :authenticate_admin!
  def permitted_params
    params.permit(:audio => [:titulo, :audio])
  end
  def create
    create!( notice: "Audio creado con éxito."){ audios_path }
  end

  def update
    update!( notice: "El audio ha sido editado."){ audios_path }
  end

  def destroy
    destroy!( notice: "El audio ha sido eliminado."){ audios_path }
  end
end

class SlidesController < InheritedResources::Base
  before_filter :authenticate_admin!
  def permitted_params
    params.permit(:slide => [:titulo, :imagen])
  end
  def create
    create!( notice: "Slide creado con éxito."){ root_path }
  end

  def update
    update!( notice: "El slide ha sido editado."){ root_path }
  end

  def destroy
    destroy!( notice: "El slide ha sido eliminado."){ root_path }
  end
end

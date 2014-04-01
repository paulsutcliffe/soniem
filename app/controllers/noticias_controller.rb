class NoticiasController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index, :show]
  def permitted_params
    params.permit(:noticia => [:titulo, :fecha, :contenido, :imagen, imagenes_attributes: [:id, :imagen, :_destroy]])
  end
  def index
    @noticias = Noticia.page(params[:page])
  end
  def create
    create!( notice: "Noticia creada con éxito."){ noticias_path }
  end

  def update
    update!( notice: "La noticia ha sido editada."){ noticias_path }
  end

  def destroy
    destroy!( notice: "La noticia ha sido eliminada."){ noticias_path }
  end
end

class NoticiasController < InheritedResources::Base
  def permitted_params
    params.permit(:noticia => [:titulo, :fecha, :contenido, :imagen, imagenes_attributes: [:id, :imagen, :_destroy]])
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

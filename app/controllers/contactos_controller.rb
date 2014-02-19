class ContactosController < InheritedResources::Base
  def permitted_params
    params.permit(:contacto => [:nombre, :email, :telefono, :mensaje])
  end

  def new
    @contacto = Contacto.new
  end

  def create
    create! do |success, failure|
      success.html do
        ContactoMailer.mensaje_recibido(@contacto).deliver

        flash[:notice] = "Tu mensaje fue enviado con éxito."
        redirect_to new_contacto_path
      end
      failure.html do
        flash[:notice] = "No ha sido enviado el mensaje."
        render :accion => "new"
      end
    end
  end

  def destroy
    destroy!( notice: "Mensaje borrado con éxito."){ contactos_path }
  end
end

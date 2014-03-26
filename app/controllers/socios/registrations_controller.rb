class Socios::RegistrationsController < Devise::RegistrationsController

  before_filter :configure_permitted_parameters

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:nombre, :contenido, :web, :twitter, :facebook, :soundcloud,
             :email, :password, :password_confirmation, fotografias_attributes: [:id, :fotografia, :_destroy])
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:nombre, :contenido, :web, :twitter, :facebook, :soundcloud,
               :email, :password, :password_confirmation, :current_password, fotografias_attributes: [:id, :fotografia, :_destroy])
    end
  end
end

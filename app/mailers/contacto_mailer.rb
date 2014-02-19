class ContactoMailer < ActionMailer::Base
  default from: 'info@kosmyka.com'
  def mensaje_recibido(contacto)
    @contacto = contacto
    mail(:to => 'adriel@kosmyka.com', :subject => 'Mensajes desde la web', :replay_to => contacto.email, :from => 'adriel@kosmyka.com')
  end
end

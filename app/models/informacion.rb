class Informacion < ActiveRecord::Base
  mount_uploader :foto, FotoUploader

  def informacion_anterior
    self.class.first(:conditions => ["titulo < ?", titulo], :order => "titulo desc")
  end

  def siguiente_informacion
    self.class.first(:conditions => ["titulo > ?", titulo], :order => "titulo asc")
  end
end

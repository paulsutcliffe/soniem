class Informacion < ActiveRecord::Base
  mount_uploader :foto, FotoUploader

end

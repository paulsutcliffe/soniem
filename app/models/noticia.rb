class Noticia < ActiveRecord::Base
  mount_uploader :imagen, ImagenUploader
end

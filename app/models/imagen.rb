class Imagen < ActiveRecord::Base
  belongs_to :noticia

  mount_uploader :imagen, ImagenUploader
end

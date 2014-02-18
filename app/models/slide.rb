class Slide < ActiveRecord::Base
  mount_uploader :imagen, ImagenUploader
end

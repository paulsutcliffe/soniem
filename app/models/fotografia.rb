class Fotografia < ActiveRecord::Base
  belongs_to :socio

  mount_uploader :fotografia, FotografiaUploader
end

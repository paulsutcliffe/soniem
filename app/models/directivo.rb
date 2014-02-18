class Directivo < ActiveRecord::Base
  mount_uploader :foto, FotoUploader
end

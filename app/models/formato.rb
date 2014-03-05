class Formato < ActiveRecord::Base
  mount_uploader :pdf, PdfUploader
end

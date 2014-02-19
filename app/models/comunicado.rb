class Comunicado < ActiveRecord::Base
  mount_uploader :pdf, PdfUploader 
end

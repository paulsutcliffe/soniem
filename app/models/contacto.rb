class Contacto < ActiveRecord::Base
  validates :nombre, presence: true
end

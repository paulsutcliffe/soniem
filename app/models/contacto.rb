class Contacto < ActiveRecord::Base
  validates :nombre, presence: true
  validates :email, presence: true
  validates :telefono, presence: true
  validates :mensaje, presence: true
end

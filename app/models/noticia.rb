class Noticia < ActiveRecord::Base
  has_many :imagenes

  accepts_nested_attributes_for :imagenes
end

class Noticia < ActiveRecord::Base
  has_many :imagenes

  accepts_nested_attributes_for :imagenes

    paginates_per 9
end

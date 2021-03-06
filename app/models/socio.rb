class Socio < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :fotografias
  has_many :eventos
  has_many :temas
  has_many :audios

  accepts_nested_attributes_for :fotografias, :allow_destroy => true
  accepts_nested_attributes_for :eventos, :allow_destroy => true
  accepts_nested_attributes_for :temas, :allow_destroy => true
  accepts_nested_attributes_for :audios, :allow_destroy => true
end

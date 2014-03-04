# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :noticia do
    titulo { Faker::Lorem.sentence }
    fecha "2014-02-19"
    contenido { Faker::Lorem.paragraph }
  end
end

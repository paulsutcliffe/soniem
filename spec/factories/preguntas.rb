# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :pregunta do
    pregunta { Faker::Lorem.sentence }
    respuesta { Faker::Lorem.paragraph }
  end
end

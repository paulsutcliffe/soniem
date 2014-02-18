# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :convenio do
    nombre { Faker::Name.name }
    descripcion { Faker::Lorem.paragraph }
  end
end

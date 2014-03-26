# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :socio do
    nombre { Faker::Name.name }
    contenido { Faker::Lorem.paragraph }
    web { Faker::Internet.url }
    twitter { Faker::Internet.url }
    facebook { Faker::Internet.url }
    soundcloud { Faker::Internet.url }
    email { Faker::Internet.email }
    password "12345678"
    password_confirmation "12345678"
  end
end

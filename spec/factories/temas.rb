# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :tema do
    titulo { Faker::Lorem.sentence }
    ano "2014-02-20"
    duracion { Faker::Number.digit }
    formato { Faker::Lorem.word }
  end
end

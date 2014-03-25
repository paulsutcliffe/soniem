# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :tema_no_registrado do
    titulo { Faker::Lorem.sentence }
    autor { Faker::Lorem.sentence }
  end
end

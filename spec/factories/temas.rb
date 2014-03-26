# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :tema do
    titulo { Faker::Lorem.sentence }
    autor { Faker::Name.name }
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :audio do
    titulo { Faker::Lorem.sentence }
    audio "audio"
  end
end

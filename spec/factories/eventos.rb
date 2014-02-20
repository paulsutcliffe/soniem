# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :evento do
    titulo { Faker::Lorem.sentence }
    lugar { Faker::Lorem.sentence }
    fecha "2014-02-20"
    link { Faker::Internet.url }
  end
end

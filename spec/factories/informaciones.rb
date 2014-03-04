# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :informacion do
    titulo { Faker::Lorem.sentence }
    foto { Rack::Test::UploadedFile.new(File.join(Rails.root,'features','support','slide1.jpg'))}
    descripcion { Faker::Lorem.paragraph }
  end
end

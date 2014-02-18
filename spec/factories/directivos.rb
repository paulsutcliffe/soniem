# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :directivo do
    nombre { Faker::Name.name }
    cargo { Faker::Name.title }
    foto { Rack::Test::UploadedFile.new(File.join(Rails.root,'features','support','foto_directivo2.jpg'))}
  end
end

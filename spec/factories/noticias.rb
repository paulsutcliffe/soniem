# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :noticia do
    titulo { Faker::Lorem.sentence }
    fecha "2014-02-19"
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root,'features','support','imagen_noticia1.jpg'))}
    contenido { Faker::Lorem.paragraph }
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :imagen do
    imagen { Rack::Test::UploadedFile.new(File.join(Rails.root,'features','support','imagen_noticia1.jpg'))}
    noticia
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :comunicado do
    titulo { Faker::Lorem.sentence }
    contenido { Faker::Lorem.paragraph }
    fecha "2014-02-19"
    pdf { Rack::Test::UploadedFile.new(File.join(Rails.root,'features','support','welcome.pdf'))}
  end
end

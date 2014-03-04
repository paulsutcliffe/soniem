# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :fotografia do
    fotografia { Rack::Test::UploadedFile.new(File.join(Rails.root,'features','support','foto_directivo1.jpg'))}
    socio
  end
end

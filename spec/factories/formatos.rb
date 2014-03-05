# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'
FactoryGirl.define do
  factory :formato do
    pdf { Rack::Test::UploadedFile.new(File.join(Rails.root,'features','support','welcome.pdf'))}
    titulo { Faker::Lorem.sentence }
  end
end

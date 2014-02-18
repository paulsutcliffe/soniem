require 'factory_girl'

require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

DatabaseCleaner.clean

FactoryGirl.create :admin

FactoryGirl.create :socio

10.times do
  FactoryGirl.create :convenio
end

10.times do
  FactoryGirl.create :directivo
end

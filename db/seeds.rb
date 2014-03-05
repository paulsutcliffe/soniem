require 'factory_girl'

require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

DatabaseCleaner.clean

FactoryGirl.create :admin

FactoryGirl.create :fotografia

10.times do
  FactoryGirl.create :convenio
end

10.times do
  FactoryGirl.create :directivo
end

3.times do
  FactoryGirl.create :slide
end

10.times do
  FactoryGirl.create :imagen
end

10.times do
  FactoryGirl.create :comunicado
end

10.times do
  FactoryGirl.create :contacto
end

10.times do
  FactoryGirl.create :informacion
end

10.times do
  FactoryGirl.create :evento
end

4.times do
  FactoryGirl.create :formato
end

10.times do
  FactoryGirl.create :tema
end

10.times do
  FactoryGirl.create :audio
end

Ubicacion.create(direccion: 'Estadio Municipal de La Molina', lat: 123 , lng: 123)

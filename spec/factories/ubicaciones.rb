# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ubicacion do
    lat 1.5
    lng 1.5
    direccion "MyString"
  end
end

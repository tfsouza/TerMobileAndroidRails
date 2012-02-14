# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :professor do
    matricula "MyString"
    nome "MyString"
    endereco "MyString"
    telefone "MyString"
  end
end

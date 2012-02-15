# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :turma do
    sigla "MyString"
    descricao "MyString"
    curso nil
  end
end

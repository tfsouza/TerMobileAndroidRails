# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :aluno do
    matricula "MyString"
    nome "MyString"
    turma nil
  end
end

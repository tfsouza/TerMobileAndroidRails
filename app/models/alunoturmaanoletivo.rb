class Alunoturmaanoletivo < ActiveRecord::Base
  belongs_to :aluno
  belongs_to :turmaanoletivo
end

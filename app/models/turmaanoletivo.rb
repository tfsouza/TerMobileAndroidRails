class Turmaanoletivo < ActiveRecord::Base
  belongs_to :turma
  belongs_to :anoletivo
end

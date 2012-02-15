class Cursodisciplinaprofessoranoletivo < ActiveRecord::Base
  belongs_to :professor
  belongs_to :cursodisciplina
  belongs_to :anoletivo
end

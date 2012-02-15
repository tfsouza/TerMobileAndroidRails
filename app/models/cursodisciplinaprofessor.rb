class Cursodisciplinaprofessor < ActiveRecord::Base
  belongs_to :professor
  belongs_to :cursodisciplina
end

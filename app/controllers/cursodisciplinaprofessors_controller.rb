#encoding: utf-8

class CursodisciplinaprofessorsController < InheritedResources::Base
def create

    create! :notice => 'Curso disciplina professor cadastrado com sucesso'

  end

  

  def update

    update! :notice => 'Curso disciplina professor alterado com sucesso' 

  end

  
end

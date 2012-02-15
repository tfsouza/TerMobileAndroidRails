#encoding: utf-8
class CursodisciplinaprofessoranoletivosController < InheritedResources::Base
def create

    create! :notice => 'Curso disciplina professor ano letivo cadastrado com sucesso'

  end

  

  def update

    update! :notice => 'Curso disciplina professor ano letivo alterado com sucesso' 

  end
end

# encoding: utf-8

class TurmasController < InheritedResources::Base
  def create
    create! :notice => 'Turma cadastrado com sucesso'
  end
  
  def update
    update! :notice => 'Turma alterado com sucesso' 
  end
  
  def destroy
    destroy! :notice => 'Turma excluído com sucesso' 
  end
end

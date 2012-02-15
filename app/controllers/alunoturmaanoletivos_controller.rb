# coding: utf-8
class AlunoturmaanoletivosController < InheritedResources::Base
  def create
    create! :notice => 'Aluno turma ano letivo cadastrado com sucesso'
  end


  def update
    update! :notice => 'Aluno turma ano letivo alterado com sucesso' 
  end
  
  def destroy
    destroy! :notice => 'Aluno turma ano letivo excluído com sucesso' 
  end
end

# encoding: utf-8
class AlunosController < InheritedResources::Base
  def create

    create! :notice => 'Aluno cadastrado com sucesso'

  end

  

  def update

    update! :notice => 'Aluno alterado com sucesso' 

  end

  

  def destroy

    destroy! :notice => 'Aluno excluído com sucesso' 

  end

end

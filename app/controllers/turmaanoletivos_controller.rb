# encoding: utf-8

class TurmaanoletivosController < InheritedResources::Base
  def create

    create! :notice => 'Turma ano letivo cadastrado com sucesso'

  end

  

  def update

    update! :notice => 'Turma ano letivo alterado com sucesso' 

  end

  

  def destroy

    destroy! :notice => 'Turma ano letivo excluído com sucesso' 

  end

end

# coding: utf-8
class CursosController < InheritedResources::Base
def create

    create! :notice => 'Curso cadastrado com sucesso'

  end

  

  def update

    update! :notice => 'Curso alterado com sucesso' 

  end

  

  def destroy

    destroy! :notice => 'Curso excluído com sucesso' 

  end

end

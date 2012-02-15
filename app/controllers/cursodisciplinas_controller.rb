# coding: utf-8
class CursodisciplinasController < InheritedResources::Base

  def create

    create! :notice => 'CursoDisciplina cadastrado com sucesso'

  end

  

  def update

    update! :notice => 'CursoDisciplina alterado com sucesso' 

  end

  

  def destroy

    destroy! :notice => 'CursoDisciplina excluído com sucesso' 

  end


end

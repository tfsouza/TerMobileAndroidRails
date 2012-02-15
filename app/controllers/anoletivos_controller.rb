#encoding: utf-8
class AnoletivosController < InheritedResources::Base
  def create

    create! :notice => 'Ano letivo cadastrado com sucesso'

  end

  

  def update

    update! :notice => 'Ano letivo alterado com sucesso' 

  end

  

  def destroy

    destroy! :notice => 'Ano letivo excluído com sucesso' 

  end

end

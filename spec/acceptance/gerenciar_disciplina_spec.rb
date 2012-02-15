# coding: utf-8

require 'spec_helper'

feature 'gerenciar disciplina' do

  scenario 'incluir disciplina' do #, :javascript => true  do

    visit new_disciplina_path
    preencher_e_verificar_disciplina
    page.should have_content 'Disciplina cadastrado com sucesso'

  end

  scenario 'alterar disciplina' do #, :javascript => true  do

    disciplina = Factory.create(:disciplina)
    visit edit_disciplina_path(disciplina)
    preencher_e_verificar_disciplina
    page.should have_content 'Disciplina alterado com sucesso'

  end

  scenario 'excluir disciplina' do #, :javascript => true  do

    disciplina = Factory.create(:disciplina)
    visit disciplinas_path
    click_link 'Excluir'

    
   

  end

  def preencher_e_verificar_disciplina

    fill_in 'Sigla', :with   => "Disdad"
    fill_in 'Nome',  :with => "Redes"
 
    click_button 'Salvar'

    page.should have_content 'Sigla: Disdad'
    page.should have_content 'Nome: Redes'


  end

end


# coding: utf-8

require 'spec_helper'

feature 'gerenciar professor' do

  scenario 'incluir professor' do #, :javascript => true  do
    visit new_professor_path
    preencher_e_verificar_professor
    page.should have_content 'Professor cadastrado com sucesso'
  end

  scenario 'alterar professor' do #, :javascript => true  do

    professor = FactoryGirl.create(:professor)
    visit edit_professor_path(professor)
    preencher_e_verificar_professor
    page.should have_content 'Professor alterado com sucesso'

  end

  scenario 'excluir professor' do #, :javascript => true  do

    professor = Factory.create(:professor)
    visit professors_path
    click_link 'Excluir'

  end

 

  def preencher_e_verificar_professor
   

    fill_in 'Matricula',  :with => "123456"
    fill_in 'Nome',  :with => "Luiz Gustavo"
    fill_in 'Endereco', :with   => "Rua"
    fill_in 'Telefone',  :with => "123456"
    

    click_button 'Salvar'
    page.should have_content 'Matricula: 123456'
    page.should have_content 'Nome: Luiz Gustavo'
    page.should have_content 'Endereco: Rua'
    page.should have_content 'Telefone: 123456'

  end

end


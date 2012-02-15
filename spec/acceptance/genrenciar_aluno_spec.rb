# coding: utf-8

require 'spec_helper'

feature 'gerenciar aluno' do

  scenario 'incluir aluno' do #, :javascript => true  do

    turma = FactoryGirl.create(:turma, :sigla => 'T01')

    visit new_aluno_path

    preencher_e_verificar_aluno

    page.should have_content 'Aluno cadastrado com sucesso'

  end

  scenario 'alterar aluno' do #, :javascript => true  do

    turma = FactoryGirl.create(:turma, :sigla => 'T01')

    aluno = FactoryGirl.create(:aluno,:turma => turma)

    visit edit_aluno_path(aluno)

    preencher_e_verificar_aluno

    page.should have_content 'Aluno alterado com sucesso'

  end

  scenario 'excluir aluno' do #, :javascript => true  do

    turma = FactoryGirl.create(:turma, :sigla => 'T01')

    aluno = FactoryGirl.create(:aluno,:turma => turma)

    visit alunos_path

    click_link 'Excluir'
    
    
  end

  def preencher_e_verificar_aluno

    fill_in 'Matricula',  :with => "12345"
    fill_in 'Nome', :with => 'Luiz'
    
    select 'T01', :on => 'Turma'
    
    click_button 'Salvar'
    page.should have_content 'Matricula: 12345'
    page.should have_content 'Nome: Luiz'
    page.should have_content 'Turma: T01'
    
  end

      

end


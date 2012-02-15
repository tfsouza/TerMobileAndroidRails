# coding: utf-8

require 'spec_helper'

feature 'gerenciar aluno turma ano letivo' do
  
  scenario 'incluir aluno turma ano letivo'do # , :javascript => true  do
    aluno = FactoryGirl.create(:aluno, :nome => 'Luiz')
    turma = FactoryGirl.create(:turma, :sigla => 'Info')
    anoletivo =FactoryGirl.create(:anoletivo, :ano => '2011')
    turmaanoletivo = FactoryGirl.create(:turmaanoletivo,:turma => turma, :anoletivo => anoletivo)
  
    visit new_alunoturmaanoletivo_path
    preencher_e_verificar_aluno_turma_ano_letivo
    page.should have_content 'Aluno turma ano letivo cadastrado com sucesso'

  end

  scenario 'alterar aluno turma ano letivo' do# , :javascript => true  do

    aluno = FactoryGirl.create(:aluno, :nome => 'Luiz')
    turma = FactoryGirl.create(:turma, :sigla => 'Info')
    anoletivo =FactoryGirl.create(:anoletivo, :ano => '2011')
    turmaanoletivo = FactoryGirl.create(:turmaanoletivo,:turma => turma, :anoletivo => anoletivo)
    alunoturmaanoletivo = FactoryGirl.create(:alunoturmaanoletivo,:aluno => aluno, :turmaanoletivo => turmaanoletivo)

    visit edit_alunoturmaanoletivo_path(alunoturmaanoletivo)

    preencher_e_verificar_aluno_turma_ano_letivo
    page.should have_content 'Aluno turma ano letivo alterado com sucesso'

  end

  scenario 'excluir aluno turma ano letivo' do #, :javascript => true  do

    aluno = FactoryGirl.create(:aluno, :nome => 'Luiz')
    turma = FactoryGirl.create(:turma, :sigla => 'Info')
    anoletivo =FactoryGirl.create(:anoletivo, :ano => '2011')
    turmaanoletivo = FactoryGirl.create(:turmaanoletivo,:turma => turma, :anoletivo => anoletivo)
    alunoturmaanoletivo = FactoryGirl.create(:alunoturmaanoletivo,:aluno => aluno, :turmaanoletivo => turmaanoletivo)

    visit alunoturmaanoletivos_path

    click_link 'Excluir'
   
   
  end

  def preencher_e_verificar_aluno_turma_ano_letivo

    
    select 'Luiz', :on => 'Aluno'
    select 'Info', :on =>  'Turma Ano Letivo/Periodo'
    
    click_button 'Salvar'
    page.should have_content 'Aluno: Luiz'
    page.should have_content 'Turma Ano Letivo/Periodo: Info'
    
    
  end
      
end


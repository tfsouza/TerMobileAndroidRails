# coding: utf-8

require 'spec_helper'

feature 'gerenciar turmaanoletivo' do

  scenario 'incluir turmaanoletivo' do #, :javascript => true  do

    turma = FactoryGirl.create(:turma, :sigla => 'Info')

    ano_letivo =FactoryGirl.create(:anoletivo, :ano => '2011')

    

    visit new_turmaanoletivo_path

    preencher_e_verificar_turmaanoletivo

    page.should have_content 'Turma ano letivo cadastrado com sucesso'

  end

  scenario 'alterar turmaanoletivo' do# , :javascript => true  do

    turma = FactoryGirl.create(:turma, :sigla => 'Info')

    ano_letivo =FactoryGirl.create(:anoletivo, :ano => '2011')

    turmaanoletivo = FactoryGirl.create(:turmaanoletivo,:turma => turma, :anoletivo => ano_letivo)

    visit edit_turmaanoletivo_path(turmaanoletivo)

    preencher_e_verificar_turmaanoletivo

    page.should have_content 'Turma ano letivo alterado com sucesso'

  end

  scenario 'excluir turmaanoletivo' do #, :javascript => true  do

    turma = FactoryGirl.create(:turma, :sigla => 'Info')

    ano_letivo =FactoryGirl.create(:anoletivo, :ano => '2011')

    turmaanoletivo = FactoryGirl.create(:turmaanoletivo,:turma => turma, :anoletivo => ano_letivo)

    visit turmaanoletivos_path

    click_link 'Excluir'

    

    

  end

  def preencher_e_verificar_turmaanoletivo
    
    select 'Info', :on => 'Turma'
    select '2011', :on =>  'Ano Letivo/Periodo'
    
    click_button 'Salvar'

    page.should have_content 'Turma: Info'
    page.should have_content 'Ano Letivo/Periodo: 2011'

    

    

  end

      

end


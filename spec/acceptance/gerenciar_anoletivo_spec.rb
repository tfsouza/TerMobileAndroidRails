# coding: utf-8

require 'spec_helper'

feature 'gerenciar ano letivo' do

  scenario 'incluir ano letivo' do #, :javascript => true  do

    visit new_anoletivo_path

    preencher_e_verificar_anoletivo

    page.should have_content 'Ano letivo cadastrado com sucesso'

  end

  scenario 'alterar ano letivo' do #, :javascript => true  do

    anoletivo = FactoryGirl.create(:anoletivo)

    visit edit_anoletivo_path(anoletivo)

    preencher_e_verificar_anoletivo

    page.should have_content 'Ano letivo alterado com sucesso'

  end

  scenario 'excluir ano letivo' do #, :javascript => true  do

    anoletivo = FactoryGirl.create(:anoletivo)

    visit anoletivos_path

    click_link 'Excluir'

    

    

  end

  def preencher_e_verificar_anoletivo

    fill_in 'Ano',  :with => "2011"

    fill_in 'Periodo', :with   => "1"

    

    click_button 'Salvar'

    page.should have_content 'Ano: 2011'

    page.should have_content 'Periodo: 1'

    

    

  end

      

end


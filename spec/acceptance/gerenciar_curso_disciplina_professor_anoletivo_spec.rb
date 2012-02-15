# coding: utf-8

require 'spec_helper'

feature 'gerenciar curso disciplina professor Ano letivo' do
  
  scenario 'incluir acurso disciplina professor' do # , :javascript => true  do
    professor = FactoryGirl.create(:professor, nome: 'luiz')
    curso = FactoryGirl.create(:curso, nome: 'info')
    disciplina =FactoryGirl.create(:disciplina, sigla: 'INFO')
    cursodisciplina = FactoryGirl.create(:cursodisciplina, curso: curso , disciplina:  disciplina)
    anoletivo = FactoryGirl.create(:anoletivo, ano: '2011')
  
    visit new_cursodisciplinaprofessoranoletivo_path
    preencher_e_verificar_curso_disciplina_professor_anoletivo
    page.should have_content 'Curso disciplina professor ano letivo cadastrado com sucesso'

  end

  scenario 'alterar curso disciplina professor' do# , :javascript => true  do

    professor = FactoryGirl.create(:professor, nome: 'luiz')
    curso = FactoryGirl.create(:curso, nome: 'info')
    disciplina =FactoryGirl.create(:disciplina, sigla: 'INFO')
    cursodisciplina = FactoryGirl.create(:cursodisciplina, curso: curso , disciplina:  disciplina)
    anoletivo = FactoryGirl.create(:anoletivo, ano: '2011')
    cursodisciplinaprofessoranoletivo = FactoryGirl.create(:cursodisciplinaprofessoranoletivo,cursodisciplina: cursodisciplina, professor: professor, anoletivo: anoletivo)

    visit edit_cursodisciplinaprofessoranoletivo_path(cursodisciplinaprofessoranoletivo)

    preencher_e_verificar_curso_disciplina_professor_anoletivo
    page.should have_content 'Curso disciplina professor ano letivo alterado com sucesso'

  end

  scenario 'excluir curso disciplina professor' do #, :javascript => true  do

    professor = FactoryGirl.create(:professor, nome: 'luiz')
    curso = FactoryGirl.create(:curso, nome: 'info')
    disciplina =FactoryGirl.create(:disciplina, sigla: 'INFO')
    cursodisciplina = FactoryGirl.create(:cursodisciplina, curso: curso , disciplina:  disciplina)
    anoletivo = FactoryGirl.create(:anoletivo, ano: '2011')
    cursodisciplinaprofessoranoletivo = FactoryGirl.create(:cursodisciplinaprofessoranoletivo,cursodisciplina: cursodisciplina, professor: professor, anoletivo: anoletivo)
    
    visit cursodisciplinaprofessoranoletivos_path

    click_link 'Excluir'
   
   
  end

  def preencher_e_verificar_curso_disciplina_professor_anoletivo

    
    select 'luiz', on: 'Professor'
    select 'INFO', on:  'Curso X Disciplina'
    select '2011', on:  'Ano Letivo/Periodo'

    click_button 'Salvar'

    page.should have_content 'Professor: luiz'
    page.should have_content 'Curso X Disciplina: INFO'
    page.should have_content 'Ano Letivo/Periodo: 2011'
    
  end
      
end

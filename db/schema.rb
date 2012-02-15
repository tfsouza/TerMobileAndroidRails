# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120215135027) do

  create_table "alunos", :force => true do |t|
    t.string   "matricula"
    t.string   "nome"
    t.integer  "turma_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "alunos", ["turma_id"], :name => "index_alunos_on_turma_id"

  create_table "alunoturmaanoletivos", :force => true do |t|
    t.integer  "aluno_id"
    t.integer  "turmaanoletivo_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "alunoturmaanoletivos", ["aluno_id"], :name => "index_alunoturmaanoletivos_on_aluno_id"
  add_index "alunoturmaanoletivos", ["turmaanoletivo_id"], :name => "index_alunoturmaanoletivos_on_turmaanoletivo_id"

  create_table "anoletivos", :force => true do |t|
    t.string   "ano"
    t.string   "period"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cursodisciplinaprofessors", :force => true do |t|
    t.integer  "professor_id"
    t.integer  "cursodisciplina_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "cursodisciplinaprofessors", ["cursodisciplina_id"], :name => "index_cursodisciplinaprofessors_on_cursodisciplina_id"
  add_index "cursodisciplinaprofessors", ["professor_id"], :name => "index_cursodisciplinaprofessors_on_professor_id"

  create_table "cursodisciplinas", :force => true do |t|
    t.integer  "curso_id"
    t.integer  "disciplina_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "cursodisciplinas", ["curso_id"], :name => "index_cursodisciplinas_on_curso_id"
  add_index "cursodisciplinas", ["disciplina_id"], :name => "index_cursodisciplinas_on_disciplina_id"

  create_table "cursos", :force => true do |t|
    t.string   "nome"
    t.string   "turno"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "disciplinas", :force => true do |t|
    t.string   "sigla"
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "professors", :force => true do |t|
    t.string   "matricula"
    t.string   "nome"
    t.string   "endereco"
    t.string   "telefone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "turmaanoletivos", :force => true do |t|
    t.integer  "turma_id"
    t.integer  "anoletivo_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "turmaanoletivos", ["anoletivo_id"], :name => "index_turmaanoletivos_on_anoletivo_id"
  add_index "turmaanoletivos", ["turma_id"], :name => "index_turmaanoletivos_on_turma_id"

  create_table "turmas", :force => true do |t|
    t.string   "sigla"
    t.string   "descricao"
    t.integer  "curso_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "turmas", ["curso_id"], :name => "index_turmas_on_curso_id"

end

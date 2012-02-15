class CreateTurmaanoletivos < ActiveRecord::Migration
  def change
    create_table :turmaanoletivos do |t|
      t.references :turma
      t.references :anoletivo

      t.timestamps
    end
    add_index :turmaanoletivos, :turma_id
    add_index :turmaanoletivos, :anoletivo_id
  end
end

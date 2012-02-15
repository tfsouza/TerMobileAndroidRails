class CreateAlunoturmaanoletivos < ActiveRecord::Migration
  def change
    create_table :alunoturmaanoletivos do |t|
      t.references :aluno
      t.references :turmaanoletivo

      t.timestamps
    end
    add_index :alunoturmaanoletivos, :aluno_id
    add_index :alunoturmaanoletivos, :turmaanoletivo_id
  end
end

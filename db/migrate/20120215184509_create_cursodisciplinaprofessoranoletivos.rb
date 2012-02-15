class CreateCursodisciplinaprofessoranoletivos < ActiveRecord::Migration
  def change
    create_table :cursodisciplinaprofessoranoletivos do |t|
      t.references :professor
      t.references :cursodisciplina
      t.references :anoletivo

      t.timestamps
    end
    add_index :cursodisciplinaprofessoranoletivos, :professor_id
    add_index :cursodisciplinaprofessoranoletivos, :cursodisciplina_id
    add_index :cursodisciplinaprofessoranoletivos, :anoletivo_id
  end
end

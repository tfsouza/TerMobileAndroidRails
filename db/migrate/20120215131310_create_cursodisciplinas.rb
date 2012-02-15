class CreateCursodisciplinas < ActiveRecord::Migration
  def change
    create_table :cursodisciplinas do |t|
      t.references :curso
      t.references :disciplina

      t.timestamps
    end
    add_index :cursodisciplinas, :curso_id
    add_index :cursodisciplinas, :disciplina_id
  end
end

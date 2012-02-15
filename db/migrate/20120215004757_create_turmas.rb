class CreateTurmas < ActiveRecord::Migration
  def change
    create_table :turmas do |t|
      t.string :sigla
      t.string :descricao
      t.references :curso

      t.timestamps
    end
    add_index :turmas, :curso_id
  end
end

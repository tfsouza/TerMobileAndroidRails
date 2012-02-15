class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
      t.string :sigla
      t.string :nome

      t.timestamps
    end
  end
end

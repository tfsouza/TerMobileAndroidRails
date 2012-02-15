class CreateCursodisciplinaprofessors < ActiveRecord::Migration
  def change
    create_table :cursodisciplinaprofessors do |t|
      t.references :professor
      t.references :cursodisciplina

      t.timestamps
    end
    add_index :cursodisciplinaprofessors, :professor_id
    add_index :cursodisciplinaprofessors, :cursodisciplina_id
  end
end

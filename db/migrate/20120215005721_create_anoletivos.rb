class CreateAnoletivos < ActiveRecord::Migration
  def change
    create_table :anoletivos do |t|
      t.string :ano
      t.string :period

      t.timestamps
    end
  end
end

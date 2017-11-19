class CreateRestauracjes < ActiveRecord::Migration
  def change
    create_table :restauracjes do |t|
      t.integer :ID_REST
      t.string :NAZWA
      t.integer :ID_OBSZARU
      t.string :ULICA
      t.string :NUMER_LOKALU
      t.string :KOD_POCZTOWY

      t.timestamps null: false
    end
  end
end

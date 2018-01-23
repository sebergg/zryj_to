class CreateUlices < ActiveRecord::Migration
  def change
    create_table :ulices do |t|
      t.integer :ID_ULICY
      t.string :ULICA
      t.string :KOD_POCZTOWY
      t.string :NUMER_LOKALU

      t.timestamps null: false
    end
  end
end

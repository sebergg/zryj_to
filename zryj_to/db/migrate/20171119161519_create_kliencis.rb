class CreateKliencis < ActiveRecord::Migration
  def change
    create_table :kliencis do |t|
      t.integer :ID_KLIENTA
      t.string :IMIE
      t.string :NAZWISKO
      t.string :ULICA
      t.string :KOD_POCZTOWY
      t.string :NUMER_LOKALU

      t.timestamps null: false
    end
  end
end

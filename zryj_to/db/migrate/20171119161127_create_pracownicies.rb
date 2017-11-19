class CreatePracownicies < ActiveRecord::Migration
  def change
    create_table :pracownicies do |t|
      t.integer :ID_PRACOWNIKA
      t.integer :ID_REST
      t.integer :ID_TYPU
      t.string :IMIE
      t.string :NAZWISKO
      t.integer :ZAROBKI

      t.timestamps null: false
    end
  end
end

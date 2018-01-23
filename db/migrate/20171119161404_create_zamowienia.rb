class CreateZamowienia < ActiveRecord::Migration
  def change
    create_table :zamowienia do |t|
      t.integer :ID_ZAMOWIENIA
      t.integer :ID_KLIENTA
      t.integer :ID_PRACOWNIKA
      t.integer :CZAS_REALIZACJI

      t.timestamps null: false
    end
  end
end

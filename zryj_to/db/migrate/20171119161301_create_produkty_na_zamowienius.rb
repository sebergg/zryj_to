class CreateProduktyNaZamowienius < ActiveRecord::Migration
  def change
    create_table :produkty_na_zamowienius do |t|
      t.integer :ID_ZAMOWIENIA
      t.integer :ID_PROD
      t.integer :LICZBA_SZTUK

      t.timestamps null: false
    end
  end
end

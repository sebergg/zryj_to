class CreateProdukties < ActiveRecord::Migration
  def change
    create_table :produkties do |t|
      t.integer :ID_PROD
      t.string :NAZWA
      t.float :CENA
      t.integer :CZAS_PRZYG

      t.timestamps null: false
    end
  end
end

class CreateObszaries < ActiveRecord::Migration
  def change
    create_table :obszaries do |t|
      t.integer :ID_OBSZARU
      t.string :NAZWA_OBSZARU
      t.integer :ID_ULICY

      t.timestamps null: false
    end
  end
end

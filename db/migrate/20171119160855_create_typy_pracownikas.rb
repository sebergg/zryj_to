class CreateTypyPracownikas < ActiveRecord::Migration
  def change
    create_table :typy_pracownikas do |t|
      t.integer :ID_TYPU
      t.string :NAZWA_TYPU

      t.timestamps null: false
    end
  end
end

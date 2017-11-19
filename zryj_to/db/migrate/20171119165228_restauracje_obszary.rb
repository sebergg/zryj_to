class RestauracjeObszary < ActiveRecord::Migration
  def change
    create_table :Restauracje_Obszary, id: false do |t|
      t.belongs_to :Restauracje, index: true
      t.belongs_to :Obszary, index: true
    end
  end
end

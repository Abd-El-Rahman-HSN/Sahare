class CreateWarehouseTrasactions < ActiveRecord::Migration[5.2]
  def change
    create_table :warehouse_trasactions do |t|
      t.string :item
      t.string :quantity
      
      t.timestamps
    end
  end
end

class CreateWarehouseTrasactions < ActiveRecord::Migration[5.2]
  def change
    create_table :warehouse_trasactions do |t|
      t.string :item
      t.string :quantity
      t.references :warehouse_locations, foreign_key: true

      t.timestamps
    end
  end
end

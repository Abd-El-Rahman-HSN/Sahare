class CreateWarehouseLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :warehouse_locations do |t|
      t.string :warloccode
      t.string :warlocname

      t.timestamps
    end
  end
end

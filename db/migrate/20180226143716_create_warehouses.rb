class CreateWarehouses < ActiveRecord::Migration[5.2]
  def change
    create_table :warehouses do |t|
      t.string :warcode
      t.string :warname

      t.timestamps
    end
  end
end

class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :item2
      t.string :quantity2
<<<<<<< HEAD
      t.references :warehouse_trasaction , foreign_key: true
      
=======
      t.references :warehouse_locations, index: true, foreign_key: true

>>>>>>> d3b113a48718ea6e3ce83a18a6eca19552413de1
      t.timestamps
    end
  end
end

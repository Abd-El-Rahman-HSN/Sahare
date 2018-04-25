class CreateItemDates < ActiveRecord::Migration[5.2]
  def change
    create_table :item_dates do |t|
      t.string :itemcode
      t.string :itemname
      t.text :description

      t.timestamps
    end
  end
end

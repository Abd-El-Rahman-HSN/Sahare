class AddCategoryToItemdata < ActiveRecord::Migration[5.2]
  def change
    add_column :item_dates, :category, :string 
  end
end

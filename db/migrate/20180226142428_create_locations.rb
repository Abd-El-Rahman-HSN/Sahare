class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :loccode
      t.string :project
      t.string :siteeng
      t.references :projects, index: true, foreign_kay: true

      t.timestamps
    end
  end
end

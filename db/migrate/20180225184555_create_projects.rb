class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :projcode
      t.string :client
      t.datetime :startdate
      t.string :projmanager

      t.timestamps
    end
  end
end

class AddRoleToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :admin, :boolean
    add_column :users, :projectmange, :boolean
    add_column :users, :techoff, :boolean
    add_column :users, :warkeep, :boolean
    add_column :users, :siteeng, :boolean
    add_column :users, :accunt, :boolean
    add_column :users, :system, :boolean
    add_column :users, :account, :boolean
  end
end

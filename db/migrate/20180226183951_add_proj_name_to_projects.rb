class AddProjNameToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :projname, :string
  end
end

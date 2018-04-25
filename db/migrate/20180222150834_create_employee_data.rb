class CreateEmployeeData < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_data do |t|
      t.string :name
      t.string :role
      t.string :user
      t.string :pass

      t.timestamps
    end
  end
end

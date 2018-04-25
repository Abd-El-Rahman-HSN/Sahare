class WarehouseTrasaction < ApplicationRecord
<<<<<<< HEAD
  has_many :tasks
  accepts_nested_attributes_for :tasks
=======
  belongs_to :warehouse_location

>>>>>>> d3b113a48718ea6e3ce83a18a6eca19552413de1
end

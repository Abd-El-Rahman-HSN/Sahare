class WarehouseLocation < ApplicationRecord
<<<<<<< HEAD
      

=======
      has_many :warehouse_trasaction
      accepts_nested_attributes_for :warehouse_trasaction, :allow_destroy => true
>>>>>>> d3b113a48718ea6e3ce83a18a6eca19552413de1
end

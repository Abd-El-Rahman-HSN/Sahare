class ItemDate < ApplicationRecord
      validates :itemname, presence: true, uniqueness: true

end

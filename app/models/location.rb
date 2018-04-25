class Location < ApplicationRecord
  belongs_to :projects
  has_many :warehouse_location
end

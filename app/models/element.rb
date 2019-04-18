class Element < ApplicationRecord
  has_many :building_elements
  has_many :buildings, through: :building_elements
end

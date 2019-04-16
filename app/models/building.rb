class Building < ApplicationRecord
  has_many :building_elements
  has_many :elements, through: :home_elements
  belongs_to :architect
  belongs_to :location

#  accepts_nested_attributes_for :elements

end

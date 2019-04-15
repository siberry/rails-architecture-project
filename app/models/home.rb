class Home < ApplicationRecord
  has_many :home_elements
  has_many :elements, through: :home_elements

#  accepts_nested_attributes_for :elements

end

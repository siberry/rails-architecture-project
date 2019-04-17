class Building < ApplicationRecord
  has_many :building_elements
  has_many :elements, through: :home_elements
  belongs_to :architect
  belongs_to :location
  has_many :user_buildings
  has_many :buildings, through: :user_buildings
  has_many :users, through: :user_buildings

#  accepts_nested_attributes_for :elements

end

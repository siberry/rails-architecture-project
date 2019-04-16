class Architect < ActiveRecord::Base
  has_many :buildings
  has_many :locations, through: :buildings

end

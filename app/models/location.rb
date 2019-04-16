class Location < ActiveRecord::Base
  has_many :buildings
  has_many :architects, through: :buildings

end

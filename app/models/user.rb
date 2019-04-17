class User < ActiveRecord::Base

  has_secure_password
  has_many :user_buildings
  has_many :buildings, through: :user_buildings

end

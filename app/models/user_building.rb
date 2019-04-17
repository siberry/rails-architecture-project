class UserBuilding < ActiveRecord::Base
  belongs_to :user
  belongs_to :building

  validates_uniqueness_of :building, scope: :user

end

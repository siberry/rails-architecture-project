class UserBuilding < ActiveRecord::Base
  belongs_to :user
  belongs_to :building

  validates_uniqueness_of :building, scope: :user
  validates :note, length: {maximum: 30}

end

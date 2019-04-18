class Architect < ActiveRecord::Base
  has_many :buildings
  has_many :locations, through: :buildings

  def self.pages
    all.select { |architect|
      architect.buildings.count > 1
    }
  end
end

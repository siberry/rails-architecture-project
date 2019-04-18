class Location < ActiveRecord::Base
  has_many :buildings
  has_many :architects, through: :buildings

  def self.pages
    all.select { |location|
      location.buildings.count > 1
    }
  end

  def display
    if !!self.city
      self.city
    elsif !!self.state
      self.state
    else
      self.country
    end

  end

end

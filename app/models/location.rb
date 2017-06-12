class Location < ApplicationRecord
  has_many :events
  geocoded_by :model_address
  after_validation :geocode

  def model_address
    "#{ self.street_number } #{ self.street } #{ self.suburb } #{ self.postcode } #{ self.state } #{ self.country }"
  end
end

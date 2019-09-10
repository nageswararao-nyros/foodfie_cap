class Location < ApplicationRecord
  geocoded_by :location
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode
  has_many :restaurants

end

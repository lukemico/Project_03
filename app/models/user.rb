class User < ApplicationRecord
  has_secure_password

  has_many :posts

  # geocoded_by :ip_address
  # after_validation :geocode
  #
  # reverse_geocoded_by :latitude, :longitude
  # after_validation :reverse_geocode
end

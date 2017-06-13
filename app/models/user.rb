# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :string
#  last_name       :string
#  email           :string
#  password_digest :string
#  admin           :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_secure_password
  has_many :posts

  # geocoded_by :ip_address
  # after_validation :geocode
  #
  # reverse_geocoded_by :latitude, :longitude
  # after_validation :reverse_geocode
end

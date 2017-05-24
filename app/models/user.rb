class User < ApplicationRecord

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_secure_password

  has_many :items
  has_many :comments
  has_many :comments, :through => :items

  geocoded_by :model_address
  after_validation :geocode

  def model_address
    "#{ self.building_number } #{ self.street } #{self.city} #{ self.state } #{ self.country }"
  end

end

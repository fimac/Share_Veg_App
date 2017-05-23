class Item < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments

  def self.search(search)
    # self.user.latitude
    # self.user.longitude

    where("name ILIKE ?", "%#{search}%")

  end

end

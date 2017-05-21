class User < ApplicationRecord

  has_many :items
  has_many :comments
  has_many :comments, :through => :items
end

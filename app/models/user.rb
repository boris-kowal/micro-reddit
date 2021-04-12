class User < ApplicationRecord
  has_many :comments
  has_many :posts

  validates :username, presence: true, uniqueness: true, length: { in: 2..12 }
  validates :password, presence: true, length: { in: 6..12 }
end

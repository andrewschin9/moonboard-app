class User < ApplicationRecord
  has_many :problems
  has_many :favorites
  has_many :ratings
  has_secure_password
  validates :username, presence: true, uniqueness: true
end

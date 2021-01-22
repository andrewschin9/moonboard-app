class Problem < ApplicationRecord
  has_many :favorites
  has_many :picked_holds
  validates :prob_name, presence: true 
  has_many :ratings
end

class Problem < ApplicationRecord
  has_many :favorites
  has_many :picked_holds
end

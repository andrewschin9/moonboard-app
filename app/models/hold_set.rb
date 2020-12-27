class HoldSet < ApplicationRecord
  has_many :problems
  has_many :holds
end



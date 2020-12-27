class Hold < ApplicationRecord
  belongs_to :hold_set
  has_many :problems
end

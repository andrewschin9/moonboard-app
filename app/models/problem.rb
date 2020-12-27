class Problem < ApplicationRecord
  has_many :favorites
  has_many :selected_holds
end

class RemoveHoldsFromProblems < ActiveRecord::Migration[6.0]
  def change
    remove_column :problems, :holds
  end
end

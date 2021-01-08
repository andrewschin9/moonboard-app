class AddColumnsToProblems < ActiveRecord::Migration[6.0]
  def change
    add_column :problems, :hold_set_id, :integer
    add_column :problems, :holds, :string
    add_column :problems, :user_id, :integer
  end
end

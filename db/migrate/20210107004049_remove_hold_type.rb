class RemoveHoldType < ActiveRecord::Migration[6.0]
  def change
    remove_column :selected_holds, :hold_type
  end
end

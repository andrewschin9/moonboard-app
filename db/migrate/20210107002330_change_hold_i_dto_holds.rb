class ChangeHoldIDtoHolds < ActiveRecord::Migration[6.0]
  def change
    remove_column :selected_holds, :hold_id
    add_column :selected_holds, :holds, :string
  end
end

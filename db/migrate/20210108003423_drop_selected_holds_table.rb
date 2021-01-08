class DropSelectedHoldsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :selected_holds
  end
end

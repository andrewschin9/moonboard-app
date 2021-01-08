class AddValueColumntoPickedHolds < ActiveRecord::Migration[6.0]
  def change
    add_column :picked_holds, :value, :string
  end
end

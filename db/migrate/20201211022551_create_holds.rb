class CreateHolds < ActiveRecord::Migration[6.0]
  def change
    create_table :holds do |t|
      t.integer :hold_set_id
      t.string :hold_position

      t.timestamps
    end
  end
end

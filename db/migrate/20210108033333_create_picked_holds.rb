class CreatePickedHolds < ActiveRecord::Migration[6.0]
  def change
    create_table :picked_holds do |t|
      t.integer :column
      t.integer :row
      t.integer :problem_id

      t.timestamps
    end
  end
end

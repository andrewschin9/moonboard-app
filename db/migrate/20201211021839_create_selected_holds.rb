class CreateSelectedHolds < ActiveRecord::Migration[6.0]
  def change
    create_table :selected_holds do |t|
      t.integer :hold_id
      t.string :hold_type
      t.integer :hold_set_id
      t.integer :name_id
      t.integer :user_id

      t.timestamps
    end
  end
end

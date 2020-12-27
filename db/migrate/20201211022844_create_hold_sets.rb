class CreateHoldSets < ActiveRecord::Migration[6.0]
  def change
    create_table :hold_sets do |t|
      t.integer :year

      t.timestamps
    end
  end
end

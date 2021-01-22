class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer :problem_id
      t.integer :user_id
      t.integer :rating

      t.timestamps
    end
  end
end

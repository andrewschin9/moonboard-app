class CreateProblems < ActiveRecord::Migration[6.0]
  def change
    create_table :problems do |t|
      t.string :prob_name
      t.integer :grade

      t.timestamps
    end
  end
end

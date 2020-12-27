class ChangeNameToProbName < ActiveRecord::Migration[6.0]
  def change
    remove_column :selected_holds, :name_id
    add_column :selected_holds, :prob_name_id, :integer
  end
end

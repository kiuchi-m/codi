class RenameTopsIdColumnToCodinates < ActiveRecord::Migration[5.2]
  def change
    rename_column :codinates, :tops_id, :top_id
    rename_column :codinates, :bottoms_id, :bottom_id
    rename_column :codinates, :users_id, :user_id
  end
end

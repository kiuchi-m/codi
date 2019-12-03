class RenameStetusColumnToCodinates < ActiveRecord::Migration[5.2]
  def change
    rename_column :codinates, :stetus, :status
  end
end

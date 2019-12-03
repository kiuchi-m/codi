class ChangeDataStatusToCodinates < ActiveRecord::Migration[5.2]
  def change
    change_column :codinates, :status, :boolean
  end
end

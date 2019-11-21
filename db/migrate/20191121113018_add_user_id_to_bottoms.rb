class AddUserIdToBottoms < ActiveRecord::Migration[5.2]
  def change
    add_column :bottoms, :user_id, :integer
  end
end

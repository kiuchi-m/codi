class CreateCodinates < ActiveRecord::Migration[5.2]
  def change
    create_table :codinates do |t|
      t.integer     :tops_id
      t.integer     :bottoms_id
      t.integer     :stetus
      t.integer     :users_id
      t.timestamps
    end
  end
end

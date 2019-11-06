class CreateBottoms < ActiveRecord::Migration[5.2]
  def change
    create_table :bottoms do |t|
      t.text    :image
      t.timestamps
    end
  end
end

class ChangeDataImageToTop < ActiveRecord::Migration[5.2]
  def change
   change_column :tops, :image, :string
  end
end
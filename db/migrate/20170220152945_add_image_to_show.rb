class AddImageToShow < ActiveRecord::Migration[5.0]
  def change
    add_column :shows, :image, :string
  end
end

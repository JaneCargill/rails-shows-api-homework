class AddDescriptionToShow < ActiveRecord::Migration[5.0]
  def change
    add_column :shows, :description, :text
  end
end

class AddProgrammeIdToShow < ActiveRecord::Migration[5.0]
  def change
    add_column :shows, :programmeID, :string
  end
end

class AddNoteToUserBuildings < ActiveRecord::Migration[5.2]
  def change
    add_column :user_buildings, :note, :string
  end
end

class CreateBuildingElements < ActiveRecord::Migration[5.2]
  def change
    create_table :building_elements do |t|
      t.belongs_to :building
      t.references :element

      t.timestamps
    end
  end
end

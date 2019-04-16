class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.integer :architect_id
      t.string :name
      t.integer :location_id
      t.string :imgurl

      t.timestamps
    end
  end
end

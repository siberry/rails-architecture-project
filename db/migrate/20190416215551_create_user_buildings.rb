class CreateUserBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :user_buildings do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :building, foreign_key: true
    end
  end
end

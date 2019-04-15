class CreateHomeElements < ActiveRecord::Migration[5.2]
  def change
    create_table :home_elements do |t|
      t.belongs_to :home
      t.references :element

      t.timestamps
    end
  end
end

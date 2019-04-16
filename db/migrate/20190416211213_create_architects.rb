class CreateArchitects < ActiveRecord::Migration[5.2]
  def change
    create_table :architects do |t|
      t.string :name
    end
  end
end

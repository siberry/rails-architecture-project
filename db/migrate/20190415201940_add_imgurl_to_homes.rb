class AddImgurlToHomes < ActiveRecord::Migration[5.2]
  def change
    add_column :homes, :imgurl, :string
  end
end

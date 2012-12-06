class AddCastleToHouse < ActiveRecord::Migration
  def change
    add_column :houses, :castle_id, :integer, :null => false, :default => '1' 
  end
end

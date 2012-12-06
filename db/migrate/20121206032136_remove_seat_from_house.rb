class RemoveSeatFromHouse < ActiveRecord::Migration
  def change
    remove_column :houses, :seat 
  end
end

class AddNameToCharacter < ActiveRecord::Migration
  def change
    # dumbass me forgot to add the names field in the first migration >.<
    add_column :characters, :first_name, :string, :null => false, :default => ""
    add_column :characters, :last_name, :string, :null => false, :default => ""
    add_index :characters, :first_name
    add_index :characters, :last_name
  end
end

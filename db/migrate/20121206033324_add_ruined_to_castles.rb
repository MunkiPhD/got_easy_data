class AddRuinedToCastles < ActiveRecord::Migration
  def change
    add_column :castles, :ruined, :boolean, :null => false, :default => false
  end
end

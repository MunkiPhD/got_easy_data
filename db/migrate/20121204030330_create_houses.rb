class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :name, :null => false
      t.string :motto
      t.string :sigil, :null => false
      t.string :seat

      #t.timestamps
    end
  end
end

class CreateCastles < ActiveRecord::Migration
  def change
    create_table :castles do |t|
      t.string :name, :null => false

      #t.timestamps
    end

    add_index :castles, :name
  end
end

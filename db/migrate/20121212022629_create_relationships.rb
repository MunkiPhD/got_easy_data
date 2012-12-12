class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :character_id, :null => false
      t.integer :relation_id, :null => false
      t.string :relation_type, :null => false

      t.timestamps
    end
  end
end

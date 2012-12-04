class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name, :null => false
      t.date :dob, :null => false
      t.boolean :is_male, :default => true
      t.string :email, :null => false
      t.string :title
      t.string :nickname
      t.references :house, :null => false

      t.timestamps
    end
  end
end

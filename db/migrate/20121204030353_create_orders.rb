class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name, :null => false
      t.string :motto

      #t.timestamps
    end
  end
end

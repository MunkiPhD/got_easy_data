class AddOrderToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :order_id, :integer
  end
end

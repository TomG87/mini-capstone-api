class AddItemInventoryToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :item_inventory, :integer
  end
end

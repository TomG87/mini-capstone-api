class AddProductIDtoImage < ActiveRecord::Migration[7.0]
  def change
    add_column :images, :product_id, :string
  end
end

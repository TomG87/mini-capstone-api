class ChangeProductIdDataType < ActiveRecord::Migration[7.0]
  def change
    change_column :images, :product_id, :integer, using: 'product_id::integer'
  end
end

class AddQuantityToCartContent < ActiveRecord::Migration[5.2]
  def change
    add_column :cart_contents, :item_quantity, :integer
  end
end

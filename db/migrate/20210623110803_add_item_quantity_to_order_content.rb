class AddItemQuantityToOrderContent < ActiveRecord::Migration[5.2]
  def change
    add_column :order_contents, :item_quantity, :integer
  end
end

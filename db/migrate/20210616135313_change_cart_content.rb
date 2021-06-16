class ChangeCartContent < ActiveRecord::Migration[5.2]
  def change
    remove_column :cart_contents, :order_id, :bigint
    add_column :cart_contents, :cart_id, :bigint
  end
end

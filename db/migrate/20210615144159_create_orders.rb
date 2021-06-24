class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.boolean :is_ready, :default => false
      t.string :stripe_customer_id
      t.belongs_to :customer, index: true
      t.belongs_to :foodtruck, index: true

      t.timestamps
    end
  end
end

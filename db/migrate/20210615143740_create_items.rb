class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :picture
      t.belongs_to :foodtruck, index: true

      t.timestamps
    end
  end
end

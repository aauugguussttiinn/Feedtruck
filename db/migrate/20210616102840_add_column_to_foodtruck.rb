class AddColumnToFoodtruck < ActiveRecord::Migration[5.2]
  def change
    add_column :foodtrucks, :name, :string
    add_column :foodtrucks, :description, :text
  end
end

class AddIndexToFoodtruck < ActiveRecord::Migration[5.2]
  def change
    add_reference :foodtrucks, :location, foreign_key: true
  end
end

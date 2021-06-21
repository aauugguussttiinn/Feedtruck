class AddUrlMapToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :url_map, :string
  end
end

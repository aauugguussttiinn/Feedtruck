class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.boolean :vote
      t.belongs_to :customer, index: true
      t.belongs_to :foodtruck, index: true

      t.timestamps
    end
  end
end

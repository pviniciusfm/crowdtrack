class CreateTripCheckpoints < ActiveRecord::Migration
  def change
    create_table :trip_checkpoints do |t|
      t.integer :trip
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end

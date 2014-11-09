class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.references :route, index: true
      t.references :user_created, index: true
      t.references :vehicle, index: true
      t.datetime :end_time_on

      t.timestamps
    end
  end
end

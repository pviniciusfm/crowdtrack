class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.references :route, index: true
      t.references :user_created, index: true
      t.belongs_to :vehicle, index: true
      t.datetime :end_time_at

      t.timestamps
    end
  end
end

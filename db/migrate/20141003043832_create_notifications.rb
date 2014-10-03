class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :user_id
      t.decimal :geo_coordinate
      t.integer :distance
      t.integer :route_id

      t.timestamps
    end
  end
end

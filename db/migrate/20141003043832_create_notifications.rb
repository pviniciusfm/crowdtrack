class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :user_id
      t.decimal :latitude
      t.decimal :longitude
      t.integer :distance
      t.integer :route_id

      t.timestamps
    end
  end
end
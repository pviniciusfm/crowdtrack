class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :route_id
      t.decimal :geo_coordinate
      t.integer :status

      t.timestamps
    end
  end
end

class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.decimal :latitude
      t.decimal :longitude
      t.integer :accuracy
      t.integer :status
      t.references :trip, index: true
      t.timestamps
    end
  end
end

class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.belongs_to :trip, index: true
      t.decimal :latitude
      t.decimal :longitude
      t.decimal :accuracy

      t.timestamps
    end
  end
end

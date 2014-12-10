class CreateCheckpoints < ActiveRecord::Migration
  def change
    create_table :checkpoints do |t|
      t.string :label
      t.decimal :latitude
      t.decimal :longitude
      t.belongs_to :route, index: true
  	  t.integer :row_order
      t.timestamps
    end
  end
end

class CreateCheckpoints < ActiveRecord::Migration
  def change
    create_table :checkpoints do |t|
      t.string :label
      t.decimal :geo_coordinate

      t.timestamps
    end
  end
end

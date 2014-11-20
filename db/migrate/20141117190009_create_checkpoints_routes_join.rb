class CreateCheckpointsRoutesJoin < ActiveRecord::Migration
  def change
    create_table :checkpoints_routes, id: false do |t|
      t.belongs_to :route
      t.belongs_to :checkpoint
      t.integer :row_order
    end
  end
end
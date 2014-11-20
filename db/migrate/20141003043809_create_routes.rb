class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :label
      t.references :company, index: true
      t.references :initial_checkpoint, index: true
      t.references :final_checkpoint, index: true

      t.timestamps
    end
  end
end

class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :label
      t.integer :company_id
      t.integer :initial_checkpoint_id
      t.integer :final_checkpoint_id

      t.timestamps
    end
  end
end

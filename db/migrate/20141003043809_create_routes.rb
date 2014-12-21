class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :label
      t.references :company, index: true
      t.timestamps
    end
  end
end

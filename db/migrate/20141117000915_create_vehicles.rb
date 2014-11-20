class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :description
      t.string :public_identifier
      t.references :company, index: true

      t.timestamps
    end
  end
end

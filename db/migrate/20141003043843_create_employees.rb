class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :company_id
      t.string :register

      t.timestamps
    end
  end
end

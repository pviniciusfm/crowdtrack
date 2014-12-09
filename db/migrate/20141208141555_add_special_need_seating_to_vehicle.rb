class AddSpecialNeedSeatingToVehicle < ActiveRecord::Migration
  def change
    add_column :vehicles, :special_need_prep, :boolean
  end
end

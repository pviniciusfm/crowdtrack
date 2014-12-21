class CreateSharedInfos < ActiveRecord::Migration
  def change
    create_table :shared_infos do |t|
      t.string :capacity_rank
      t.string :traffic_rank
      t.string :comments
      t.references :trip, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end

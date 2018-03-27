class CreateMasterSlots < ActiveRecord::Migration[5.1]
  def change
    create_table :master_slots do |t|
    	t.references :master_meal
    	t.time :start_time
    	t.time :end_time
      t.timestamps
    end
  end
end

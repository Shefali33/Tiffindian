class CreateMasterDays < ActiveRecord::Migration[5.1]
  def change
    create_table :master_days do |t|
    	t.string :days
      t.timestamps
    end
  end
end

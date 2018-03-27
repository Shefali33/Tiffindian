class CreateMasterOrderStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :master_order_statuses do |t|
    	t.string :order_status
      t.timestamps
    end
  end
end

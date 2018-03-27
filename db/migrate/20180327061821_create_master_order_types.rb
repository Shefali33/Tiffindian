class CreateMasterOrderTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :master_order_types do |t|
    	t.string :order_type
      t.timestamps
    end
  end
end

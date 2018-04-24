class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :supplier_id
      t.date :oredered_date
      t.date :delivery_date
      t.time :delivery_time
      t.integer :quantity
      t.integer :price
      t.integer :rating
      t.references :menu
      t.references :master_slot
      t.references :master_order_status
      t.references :master_order_type
      t.timestamps
    end
  end
end

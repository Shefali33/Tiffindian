class CreateMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :memberships do |t|
    	t.integer :user_id
    	t.integer :supplier_id
    	t.references :master_subscription
    	t.date :start_date
    	t.date :end_date
    	t.integer :quantity_provided
    	t.integer :quantity_left
      t.timestamps
    end
  end
end

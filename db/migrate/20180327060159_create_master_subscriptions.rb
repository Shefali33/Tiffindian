class CreateMasterSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :master_subscriptions do |t|
    	t.string :subscription
      t.timestamps
    end
  end
end

class Addminmaxtosubscription < ActiveRecord::Migration[5.1]
  def change
  	  add_column :master_subscriptions, :min_price, :integer
    add_column :master_subscriptions, :max_price, :integer
  end
end

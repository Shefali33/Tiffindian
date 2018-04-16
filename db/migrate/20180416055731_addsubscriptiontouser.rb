class Addsubscriptiontouser < ActiveRecord::Migration[5.1]
  def change
  	   add_reference :users, :master_subscriptions
  end
end

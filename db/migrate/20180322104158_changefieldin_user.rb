class ChangefieldinUser < ActiveRecord::Migration[5.1]
  def change
  	change_column :users, :contact_no, :string
  end
end

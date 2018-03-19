class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
    	t.integer :role_id
    	t.string :name
    	t.integer :contact_number
    	t.string :E_mail

      t.timestamps
    end
  end
end

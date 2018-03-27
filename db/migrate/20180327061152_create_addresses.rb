class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
    	t.references :user
    	t.string :street_number
    	t.integer :sector
    	t.string :city
      t.timestamps
    end
  end
end

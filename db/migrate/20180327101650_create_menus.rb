class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
    	t.references :user
    	t.references :master_category
    	t.references :master_meal
    	t.references :master_day
    	t.string :menu
    	t.integer :price
      t.integer :max_quantity
      t.timestamps
    end
  end
end

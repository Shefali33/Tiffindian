class CreateMasterCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :master_categories do |t|
    	t.string :category
      t.timestamps
    end
  end
end

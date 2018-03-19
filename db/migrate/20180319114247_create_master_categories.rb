class CreateMasterCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :master_categories do |t|
      t.string :Category
      t.timestamps
    end
  end
end

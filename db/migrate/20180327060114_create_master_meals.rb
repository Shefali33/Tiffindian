class CreateMasterMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :master_meals do |t|
    	t.string :meals_type
      t.timestamps
    end
  end
end

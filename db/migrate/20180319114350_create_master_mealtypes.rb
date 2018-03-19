class CreateMasterMealtypes < ActiveRecord::Migration[5.1]
  def change
    create_table :master_mealtypes do |t|
      t.string :Meals
      t.timestamps
    end
  end
end

class MasterMeal < ApplicationRecord
	 has_many :menus
	 has_many :users, through: :menus
end

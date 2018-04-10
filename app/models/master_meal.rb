class MasterMeal < ApplicationRecord
	 has_many :menus
	 has_many :users, through: :menus

	def check_disabled(disabled)
		if disabled.include? self
			return  true
		else
			return false
		end	 	
	end	 
end

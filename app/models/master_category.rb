class MasterCategory < ApplicationRecord
	 has_many :menus
	 has_many :users, through: :menus

	 def field_disab(disabled)
		if disabled.include? self
			return  true
		else
			return false
		end	 	
	end	 
end

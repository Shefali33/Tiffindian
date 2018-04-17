class Menu < ApplicationRecord
	belongs_to :user
	belongs_to :master_category
	belongs_to :master_meal
	belongs_to :master_day
	validates :price,:numericality => true
end

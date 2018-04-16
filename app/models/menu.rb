class Menu < ApplicationRecord
	belongs_to :user
	belongs_to :master_category
	belongs_to :master_meal
	validates :price,:numericality => true
end

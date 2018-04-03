class Menu < ApplicationRecord
	belongs_to :user
	validates :price,:numericality => true
end

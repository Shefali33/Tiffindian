class MasterSubscription < ApplicationRecord
	# belongs_to :user
	# belongs_to :membership
	 has_many :memberships
	 has_many :users, through: :memberships

end

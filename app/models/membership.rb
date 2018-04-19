class Membership < ApplicationRecord
	# has_many :users, through: :master_subscriptions
# has_many :users, :class_name => 'User', :foreign_key => 'user_id'
# has_many :users, :class_name => 'User', :foreign_key => 'supplier_id'
belongs_to :user
belongs_to :supplier, :class_name => "User"
end

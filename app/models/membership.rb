class Membership < ApplicationRecord
	# has_many :users, through: :master_subscriptions
 # has_many :users, :class_name => 'User', :foreign_key => 'user_id'
 # has_many :suppliers, :class_name => 'User'
belongs_to :user
belongs_to :supplier, :class_name => "User", :foreign_key => 'supplier_id'
end

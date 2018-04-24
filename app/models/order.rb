class Order < ApplicationRecord
	belongs_to :user
    belongs_to :supplier, :class_name => "User", :foreign_key => 'supplier_id'
end

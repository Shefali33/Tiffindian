class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :master_role
  has_many :menu
  # has_many :suppliers, class_name: "User", foreign_key: "master_role_id"
  # belongs_to :master_meal
  # belongs_to :master_category
  validates :contact_no,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 10, :maximum => 12 } 
   validates :name, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" },
   				:length => { :minimum => 4, :maximum => 20 }  # attr_accessor :master_role_id
   # has_many :suppliers, :class_name => "User",
   #  :foreign_key => "master_role_id"
  # belongs_to :, :class_name => "User",
  #   :foreign_key => "master_role_id"

 
 end

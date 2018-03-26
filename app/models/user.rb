class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :master_role
  # validates :contact_no,:presence => true,
  #                :numericality => true,
  #                :length => { :minimum => 10, :maximum => 15 } 
   # validates :name,
   # 				:length => { :maximum => 20 }  # attr_accessor :master_role_id
 end

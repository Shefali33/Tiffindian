class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :master_role
  has_many :menus
  # has_many :memberships, through: :master_subscriptions
    has_attached_file :image, styles: { medium: "300x300#", thumb: "100x100#", disp:"400x350#", bg:"600x800#" }

    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

  accepts_nested_attributes_for :menus, :allow_destroy => true
  has_many :master_meals, through: :menus
  has_many :master_categorys, through: :menus
  has_many :master_subscriptions, through: :memberships
  has_many :memberships
  has_many :orders
  has_many :suppliers, through: :orders
  has_many :suppliers, through: :memberships
 # belongs_to :membership, :class_name => "Membership"
 # belongs_to :membership, :class_name => "Membership"
  # has_many :suppliers, class_name: "User", foreign_key: "master_role_id"
  # belongs_to :master_meal
  # belongs_to :master_category
  validates :contact_no,:presence => true,
                 :numericality => true 
   validates :name, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
  # attr_accessor :master_role_id
   # has_many :suppliers, :class_name => "User",
   #  :foreign_key => "master_role_id"
  # belongs_to :, :class_name => "User",
  #   :foreign_key => "master_role_id"


 end

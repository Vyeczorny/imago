class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :login, uniqueness: true, allow_blank: false

  has_attached_file :avatar, :styles => { :thumb => "200x200" }, :default_url => ActionController::Base.helpers.asset_path('default-user-icon-profile.png')
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  has_many :photos
  has_many :comments
end
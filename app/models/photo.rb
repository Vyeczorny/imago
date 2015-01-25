class Photo < ActiveRecord::Base
  has_attached_file :photo, :styles => { :thumb => "200x200" }
  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates :photo, :attachment_presence => true

  belongs_to :user
  has_many :comments
end

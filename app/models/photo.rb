class Photo < ActiveRecord::Base
  has_attached_file :photo, :styles => { :thumb => "200x200" }
  # validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  do_not_validate_attachment_file_type :photo


  belongs_to :user
end

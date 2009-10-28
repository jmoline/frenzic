class Photo < ActiveRecord::Base
  
  belongs_to :parent, :polymorphic => true
  belongs_to :owner, :class_name => "User"
  
  has_attached_file :photo, :styles => { :large => "500x500>", :medium => "300x300>", :small => "200x200>", :thumb => "100x100>" }
  
  has_friendly_id :title, :use_slug => true
  
  attr_accessible :parent_id, :parent_type, :owner_id, :photo_file_name, :photo_content_type, :photo_file_size, :photo_updated_at, :title, :photo
end

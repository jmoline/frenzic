class Photo < ActiveRecord::Base
  
  belongs_to :parent, :polymorphic => true
  
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
  attr_accessible :parent_id, :parent_type, :owner_id, :photo_file_name, :photo_content_type, :photo_file_size, :photo_updated_at, :title
end

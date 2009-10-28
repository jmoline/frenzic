class Post < ActiveRecord::Base
  attr_accessible :title, :body, :author_id, :parent_id, :parent_type
  
  belongs_to :parent
  has_friendly_id :title, :use_slug => true
end

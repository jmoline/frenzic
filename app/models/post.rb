class Post < ActiveRecord::Base
  attr_accessible :title, :body, :author_id, :parent_id, :parent_type
  
  belongs_to :parent
end

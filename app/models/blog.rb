class Blog < ActiveRecord::Base
  attr_accessible :title
  
  has_many :posts, :as => :parent
  has_friendly_id :title, :use_slug => true
end

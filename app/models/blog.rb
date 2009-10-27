class Blog < ActiveRecord::Base
  attr_accessible :title
  
  has_many :posts, :as => :parent
end

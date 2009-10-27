class PhotoGallery < ActiveRecord::Base
  attr_accessible :title, :body, :owner_id
  
  has_many :photos, :as => :parent
end

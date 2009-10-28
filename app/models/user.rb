class User < ActiveRecord::Base
  attr_accessor :password_confirmation
  attr_accessible :username, :email, :password, :password_confirmation
  
  acts_as_authentic
  
  has_friendly_id :username
  
end

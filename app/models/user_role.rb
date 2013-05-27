class UserRole < ActiveRecord::Base
  attr_accessible :title

  has_many :artist_user

end

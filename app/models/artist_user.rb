class ArtistUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :artist
  belongs_to :user_role
  # attr_accessible :title, :body
end

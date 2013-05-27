class ArtistRoles < ActiveRecord::Base
  attr_accessible :title

  has_many :artist_records
end

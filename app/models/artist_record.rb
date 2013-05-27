class ArtistRecord < ActiveRecord::Base
  belongs_to :artist
  belongs_to :artist_roles
  belongs_to :recording
end

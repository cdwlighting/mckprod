class AlbumRecord < ActiveRecord::Base
  attr_accessible :order
  belongs_to :album
  belongs_to :recording
end

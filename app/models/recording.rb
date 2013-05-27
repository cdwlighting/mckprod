class Recording < ActiveRecord::Base
  attr_accessible :name, :ranking, :release_date

  has_many :album_records
  has_many :albums, :through => :album_records
  has_many :user_recordings
  has_many :users, :through => :user_recordings

  validates :name, :presence => true, :length => { maximum: 50 }
  validates :release_date, presence: true
end

class Album < ActiveRecord::Base
  has_and_belongs_to_many :artists
  attr_accessible :name, :ranking, :release_date

  validates :name, presence: true, length: { maximum: 50 }
  validates :release_date, presence: true

  has_many :album_records
  has_many :recording, :through => :album_records
  has_many :user_albums
  has_many :users, :through => :user_albums
end

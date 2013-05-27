class Artist < ActiveRecord::Base
  attr_accessible :name

  validates :name, presence: true, length: { maximum: 50 }

  has_many :artist_users
  has_many :users, :through => :artist_users
  has_and_belongs_to_many :albums
  has_many :artist_records
  has_many :recordings, :through => :artist_records
  has_many :artist_roles, :through => :artist_records

end

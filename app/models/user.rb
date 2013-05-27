# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password

  before_save { email.downcase! }

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false}
  validates :password, presence: true, length: { minimum:6 }
  validates :password_confirmation, presence: true

  has_many :artist_users
  has_many :artists, :through => :artist_users
  has_many :user_albums
  has_many :albums, :through => :user_albums
  has_many :user_recordings
  has_many :record, :through => :user_recordings
end

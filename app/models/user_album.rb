class UserAlbum < ActiveRecord::Base
  belongs_to :user
  belongs_to :album
  attr_accessible :expires_date, :purchase_date
  validates :expires_date, presence: true
  validates :purchase_date, presence: true
end

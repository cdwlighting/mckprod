class UserRecording < ActiveRecord::Base
  belongs_to :user
  belongs_to :record
  attr_accessible :expires_date, :purchase_date
end

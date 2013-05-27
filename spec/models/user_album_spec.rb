require 'spec_helper'

describe UserAlbum do
  describe "relationships" do
    it {should belong_to(:album)}
    it {should belong_to(:user)}
  end
  describe "validations" do
    it {should validate_presence_of(:purchase_date)}
    it {should validate_presence_of(:expires_date)}
  end
end

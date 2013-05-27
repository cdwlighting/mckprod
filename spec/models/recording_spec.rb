require 'spec_helper'

describe Recording do
  it {should respond_to(:name)}
  it {should respond_to(:release_date)}
  it {should respond_to(:ranking)}

  describe "relationships" do
    it {should have_many(:album_records)}
    it {should have_many(:albums).through(:album_records)}
    it { should have_many(:user_recordings)}
    it { should have_many(:users).through(:user_recordings)}
  end

  describe "validations" do
    it { should validate_presence_of(:name)}
    it { should ensure_length_of(:name).is_at_most(50)}
    it { should validate_presence_of(:release_date)}
  end
end

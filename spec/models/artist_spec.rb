require 'spec_helper'

describe Artist do
  before { @artist = Artist.new(name: 'Test Artist')}

  subject { @artist }
  it { should respond_to( :name )}

  it { should be_valid }

  it { should have_many(:artist_users)}
  it { should have_many(:users).through(:artist_users) }
  it { should have_and_belong_to_many(:albums)}
  it { should have_many(:artist_records)}
  it { should have_many(:recordings).through(:artist_records)}
  it { should have_many(:artist_roles).through(:artist_records)}

  describe "When name is not present" do
    before { @artist.name = " " }

    it{ should_not be_valid }
  end

  describe "when name exceeds 50 characters" do
    before { @artist.name = "a" *51 }

    it{ should_not be_valid }
  end

end

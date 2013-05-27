require 'spec_helper'

describe Album do
  it { should respond_to( :name ) }
  it { should respond_to( :release_date ) }
  it { should respond_to( :ranking ) }
  describe 'relationships' do
    it { should have_and_belong_to_many(:artists) }
    it { should have_many(:album_records)}
    it { should have_many(:recording).through(:album_records)}
    it { should have_many(:user_albums)}
    it { should have_many(:users).through(:user_albums)}
  end
  describe 'validations' do
    it{ should validate_presence_of( :name )}
    it{ should ensure_length_of(:name).is_at_most(50)}
    it{ should validate_presence_of( :release_date )}
  end
end

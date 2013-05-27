require 'spec_helper'

describe UserRole do
  before { @userRole = UserRole.new(title:'Record Artist') }

  subject(@userRole)

  it { should be_valid }
  it { should have_many( :artist_user ) }
end

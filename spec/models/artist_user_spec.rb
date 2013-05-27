require 'spec_helper'

describe ArtistUser do
  it { should belong_to( :user) }
  it { should belong_to( :artist) }
  it { should belong_to( :user_role ) }
end

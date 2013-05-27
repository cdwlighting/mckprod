require 'spec_helper'

describe ArtistRecord do
  describe "relationships" do
    it{should belong_to(:recording)}
    it{should belong_to(:artist)}
    it{should belong_to(:artist_roles)}
  end
end

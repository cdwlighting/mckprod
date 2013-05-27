require 'spec_helper'

describe ArtistRoles do
  it{should respond_to(:title)}

  describe "references" do
    it{should have_many(:artist_records)}
  end
end

require 'spec_helper'

describe AlbumRecord do
  describe "relationships" do
    it { should belong_to(:album) }
    it { should belong_to(:recording) }
    it { should respond_to(:order) }
  end
end

require 'spec_helper'

describe ApplicationHelper do
  describe "full_title" do
    it "should include hte page title" do
      full_title("foo").should =~ /foo/
    end

    it" should include the base_title" do
      full_title("foo").should =~ /^McKelvey-Warner Productions/
    end

    it "should not_include a bar for the home page" do
      full_title("").should_not =~ /\|/
    end
  end
end
require "rails_helper"

RSpec.describe Tagging, :type => :model do
  context "Tagging Queries" do
    it "Tagging create" do
      tag = Tagging.new(tag_name: "Soup", )
      expect(tag).to be_valid
    end
  end
end
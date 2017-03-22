require 'rails_helper'

RSpec.describe Owner, type: :model do
  describe "when create" do
    before do
      @owner = FactoryGirl.create(:owner)
    end

    it "cannot be valid without a name" do
      @owner.name = nil
      expect(@owner).to_not be_valid
    end

    it "cannot be valid without a phone" do
      @owner.phone = nil
      expect(@owner).to_not be_valid
    end
  end
end

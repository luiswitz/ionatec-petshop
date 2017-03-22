require 'rails_helper'

RSpec.describe Visit, type: :model do
  describe "when create" do
    before do
      @visit = FactoryGirl.create(:visit, services: [FactoryGirl.create(:service), FactoryGirl.create(:service)])
    end

    it "cannot be valid without a pet" do
      @visit.dog = nil
      expect(@visit).to_not be_valid
    end

    it "cannot be valid without a visit date" do
      @visit.visited_on = nil
      expect(@visit).to_not be_valid
    end


    it "should have at least one service associeted" do
      expect(@visit).to be_valid
    end

    it "cannot be valid without services" do
      @visit.services.clear
      expect(@visit).to_not be_valid
    end
  end
end

require 'rails_helper'

RSpec.describe Dog, type: :model do
  describe "when create" do
    before do
      @dog = FactoryGirl.create(:dog)
    end

    it "cannot be valid without a name" do
      @dog.name = nil
      expect(@dog).to_not be_valid
    end

    it "cannot be valid without a gender" do
      @dog.gender = nil
      expect(@dog).to_not be_valid
    end

    it "cannote be valid without a breed" do
      @dog.breed_id = nil
      expect(@dog).to_not be_valid
    end

    it "cannot be valid without an owner" do
      @dog.owner_id = nil
      expect(@dog).to_not be_valid
    end
  end
end

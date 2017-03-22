require 'rails_helper'

RSpec.describe Breed, type: :model do
  describe "when create" do
    before do
      @breed = FactoryGirl.create(:breed)
    end

    it "cannot be created without a name" do
      @breed.name = nil
      expect(@breed).to_not be_valid
    end
  end
end

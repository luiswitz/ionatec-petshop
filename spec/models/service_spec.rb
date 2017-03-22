require 'rails_helper'

RSpec.describe Service, type: :model do
  describe "when create" do
    before do
      @service = FactoryGirl.create(:service)
    end

    it "cannot be created without a name" do
      @service.name = nil
      expect(@service).to_not be_valid
    end

    it "cannot be created without a value" do
      @service.value = nil
      expect(@service).to_not be_valid
    end


    it "cannot be created with value equals zero" do
      @service.value = 0.00
      expect(@service).to_not be_valid
    end
  end
end

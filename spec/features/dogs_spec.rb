require 'rails_helper'

describe "#navigate" do

  describe "GET index" do
    before do
      visit dogs_path
    end

    it "can be reached successfully" do
      expect(page.status_code).to eq(200)
    end

    it "have a title of pets" do
      expect(page).to have_content(/Dogs/)
    end

    it "has a list of pets" do
      dog1 = FactoryGirl.create(:dog)
      dog2 = FactoryGirl.create(:dog)
      visit dogs_path

      expect(page).to have_content(/#{dog1.name}|#{dog2.name}/)
    end
  end
end

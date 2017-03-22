require 'rails_helper'

describe "#navigate" do

  describe "GET index" do
    before do
      visit dogs_path
    end

    it "can be reached successfully" do
      expect(page.status_code).to eq(200)
    end

    it "have a title of dogs" do
      expect(page).to have_content(/Dogs/)
    end

    it "has a list of dogs" do
      dog1 = FactoryGirl.create(:dog)
      dog2 = FactoryGirl.create(:dog)
      visit dogs_path

      expect(page).to have_content(/#{dog1.name}|#{dog2.name}/)
    end
  end

  describe "#search" do
    before do
      visit dogs_path
      owner = FactoryGirl.create(:owner, name: 'John')
      breed = FactoryGirl.create(:breed, name: 'Buldogue')
      @dog1 = FactoryGirl.create(:dog, name: 'Rex', breed: breed, owner: owner)
    end

    it "get all records that matches the dog name key words" do
      fill_in "q_name_cont", with: "Rex"
      click_on "Buscar"

      expect(page).to have_css('#dogs tr', count: 1)
    end

    it "get all records that matches the dog breed name" do
      fill_in "q_breed_name_cont", with: "buldogue"
      click_on "Buscar"

      expect(page).to have_css("#dogs tr", count: 1)
    end

    it "get all records that matches the dog owner name" do
      fill_in "q_owner_name_cont", with: "john"
      click_on "Buscar"

      expect(page).to have_css("#dogs tr", count: 1)
    end

  end
end

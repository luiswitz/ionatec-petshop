FactoryGirl.define do
  factory :visit do
    dog { FactoryGirl.create(:dog) }
    visited_on { Faker::Date.between(10.year.ago, Date.today) }
  end
end

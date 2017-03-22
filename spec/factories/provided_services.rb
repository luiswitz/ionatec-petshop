FactoryGirl.define do
  factory :provided_service do
    visit { FactoryGirl.create(:visit) }
    service { FactoryGirl.create(:service) }
    value Faker::Number.decimal(3)
  end
end

FactoryGirl.define do
  sequence :service_name do |n|
    "Service #{n}"
  end

  factory :service do
    name { generate :service_name }
    value Faker::Number.decimal(3)
  end
end

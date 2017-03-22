FactoryGirl.define do
  factory :dog do
    name { [Faker::StarWars.character, Faker::Pokemon.name, Faker::Cat.name, Faker::Zelda.character].sample }
    gender { Dog.genders.to_a.sample[0] }
    breed { FactoryGirl.create(:breed) }
    castrated { Faker::Boolean.boolean }
    birthdate { Faker::Date.between(15.year.ago, Date.today) }
    owner { FactoryGirl.create(:owner) }
  end
end

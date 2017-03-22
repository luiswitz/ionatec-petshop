breeds_page = HTTParty.get('http://www.portalfilhotes.com.br/racas-de-a-z/')
parse_breeds_page = Nokogiri::HTML(breeds_page)

parse_breeds_page.css('#HOTWordsTxt').css('ul').css('li').map do |p|
  Breed.create(name: p.text)
end

FactoryGirl.create(:service, name: 'Banho')
FactoryGirl.create(:service, name: 'Tosa')
FactoryGirl.create(:service, name: 'Hospedagem')
FactoryGirl.create(:service, name: 'Adestramento')
FactoryGirl.create(:service, name: 'Internação')
FactoryGirl.create(:service, name: 'Consulta')
FactoryGirl.create(:service, name: 'Tratamento Odontológico')

1000.times do
  breed_offset = rand(Breed.count)
  FactoryGirl.create(:dog, breed: Breed.offset(breed_offset).first, owner: FactoryGirl.create(:owner))
end

4000.times do
  dog_offset = rand(Dog.count)
  service_offset = rand(Service.count)
  FactoryGirl.create(:visit, dog: Dog.offset(dog_offset).first, services: [Service.offset(service_offset).first])
end

breeds_page = HTTParty.get('http://www.portalfilhotes.com.br/racas-de-a-z/')
parse_breeds_page = Nokogiri::HTML(breeds_page)

parse_breeds_page.css('#HOTWordsTxt').css('ul').css('li').map do |p|
  Breed.create(name: p.text)
end

1000.times do
  breed_offset = rand(Breed.count)
  FactoryGirl.create(:dog, breed: Breed.offset(breed_offset).first, owner: FactoryGirl.create(:owner))
end

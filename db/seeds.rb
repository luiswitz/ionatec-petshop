breeds_page = HTTParty.get('http://www.portalfilhotes.com.br/racas-de-a-z/')
parse_breeds_page = Nokogiri::HTML(breeds_page)

parse_breeds_page.css('#HOTWordsTxt').css('ul').css('li').map do |p|
  Breed.create(name: p.text)
end

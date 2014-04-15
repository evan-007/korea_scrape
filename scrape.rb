require 'nokogiri'
require 'open-uri'

scrape_url = 'http://travel.cnn.com/seoul/visit/50-beautiful-places-visit-korea-873093'
page = Nokogiri::HTML(open(scrape_url))

page.css('.field-item.even h2').each do |header|
  
	en_name =  header.text[/[a-zA-Z ]+/]
	puts en_name
end

page.css('.clear-fix').each do |p|
	en_desc = p.text
	puts en_desc
end

page.css('.p3 em').each do |dir|
	#not all the data we want is .p3, some are .p2
	puts dir.text
end
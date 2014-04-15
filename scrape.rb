require 'nokogiri'
require 'open-uri'

scrape_url = 'http://www.thesouthkoreatravelguide.com/seoul/seoul_touristattractionreviews.html'
page = Nokogiri::HTML(open(scrape_url))

page.css('.location-item a').each do |link|
  puts link['href']
end

scrape_me = Nokogiri::HTML(open('http://www.thesouthkoreatravelguide.com/seoul/childrens-grand-park_attraction-review.html'))

@title = scrape_me.css('.left-hd-title').text

@body = scrape_me.css('.location-sectextarea p').text

#okay, but no address info

#try here:  http://travel.cnn.com/seoul/visit/50-beautiful-places-visit-korea-873093
require 'Nokogiri'
require 'HTTParty'
require 'json'
require 'restclient'



# class Scraper

#   attr_accessor :parse_page

#    def initialize
    # response = HTTParty.get("https://www.karenmillen.com/au/womens/sale/?prefn1=refinementcategory&prefv1=Dresses&page=2&format=page-element")
    page = Nokogiri::HTML(RestClient.get("https://www.karenmillen.com/au/womens/sale/?prefn1=refinementcategory&prefv1=Dresses&page=2&format=page-element"))   

def parse_page
  @parse_page ||= Nokogiri::HTML(doc)
end

puts page

# puts page.css("title")

# puts Nokogiri::CSS.parse("ul[data-page=2]")
# ["data_page"][0].text  # => title
# puts page.css("title")[0].text   # => My webpage
#   

#     scraper = Scraper.new
#     names = scraper.get_names

#     puts names 

# # names.each do |index|
#    puts "Item is #{names |index| }" 
# # end
# end


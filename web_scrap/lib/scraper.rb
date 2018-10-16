require 'Nokogiri'
require 'HTTParty'
require 'json'

# class Scraper

#   attr_accessor :parse_page

#   def initialize
    response = HTTParty.get("https://www.karenmillen.com/au/womens/sale/?prefn1=refinementcategory&prefv1=Dresses")
    # @parse_page ||= Nokogiri::HTML(doc)
#   end

#   def get_names
#     parse_page.css(".product-tile").css(".name-price-wrapper").css.children.map { |name| name.text }.compact
#   end

#     scraper = Scraper.new
#     names = scraper.get_names

#     puts names 

# # names.each do |index|
# #   puts "Item is #{names |index| }" 
# # end
puts response.code
# end


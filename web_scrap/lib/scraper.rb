require 'Nokogiri'
require 'HTTParty'
require 'json'
require 'restclient'


# response = HTTParty.get("https://www.karenmillen.com/au/womens/sale/?prefn1=refinementcategory&prefv1=Dresses&page=2&format=page-element"))
html = Nokogiri::HTML(RestClient.get("https://www.karenmillen.com/au/womens/sale/?prefn1=refinementcategory&prefv1=Dresses&page=2&format=page-element"))   
  
#CSS selector 
html.css("ul[data-page]").each do |form|

#HTML attribute selector (1 by 1)
# p JSON.parse(form["data-gtm"])[0]["price"]
 # p JSON.parse(form["data-gtm"])[0]["name"]

 #HTML attribute selector (looping through the hash to display all items)
JSON.parse(form["data-gtm"]).each do |hash|
  puts "The name of the dress is #{hash["name"]} and the price is #{hash["price"]}"
end
end

    
    
    

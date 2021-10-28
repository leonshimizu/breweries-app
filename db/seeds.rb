# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

link = HTTP.get("https://api.openbrewerydb.org/breweries")
breweries_link = link.parse(:json)

# i = 0
# 21.times do
#   brewery = Brewery.new(
#     name: breweries_link[i]["name"], 
#     city: breweries_link[i]["city"], state: breweries_link[i]["state"], country: breweries_link[i]["country"])
#   brewery.save
#   i += 1
# end

i = 1
5.times do
  brewery = Brewery.new(
        name: breweries_link[i]["name"], 
        city: breweries_link[i]["city"], state: breweries_link[i]["state"], country: breweries_link[i]["country"])
  brewery.save
  i += 1
end
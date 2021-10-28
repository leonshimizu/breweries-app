# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

link = HTTP.get("https://api.openbrewerydb.org/breweries")
breweries_link = link.parse(:json)

brewery = Brewery.new(
  name: breweries_link[0]["name"], 
  city: breweries_link[0]["city"], state: breweries_link[0]["state"], country: breweries_link[0]["country"])
brewery.save
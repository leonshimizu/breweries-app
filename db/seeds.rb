# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# link = HTTP.get("https://api.openbrewerydb.org/breweries")
# link = link.parse(:json)

# i = 0
# 20.times do
#   brewery = Brewery.create(
#     name: link[i]["name"], 
#     city: link[i]["city"], 
#     state: link[i]["state"], 
#     country: link[i]["country"])
#   i += 1
# end

### Step 2
# require 'csv'

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'breweries_us.csv'))
# puts csv_text

### Step 3
# require 'csv'

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'breweries_us.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# puts csv

### Step 4 
# require 'csv'

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'breweries_us.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   puts row.to_hash
# end

# require 'csv'

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'breweries_us.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = Transaction.new
#   t.name = row['brewery_name']
#   t.type = row['type']
#   t.address = row['address']
#   t.website = row['website']
#   t.state = row['state']
#   t.state_breweries = row['state_breweries']
#   t.save
#   puts "#{t.name} saved"
# end

# puts "There are now #{Transaction.count} rows in the transactions table"

require 'csv'

CSV.foreach(Rails.root.join('lib/seeds/breweries_us.csv'), headers: true) do |row|
  Brewery.create( {
    name: row['brewery_name'], 
    description: row['type'],
    address: row['address'],
    website: row['website'],
    state: row['state']
  } ) 
end

# Steps to Complete 
# - delete db
# - create new db
# - start with 1 location
# - generate a migration to add lng lat 
# - test geocoder conversions of address to lng lat 
# - add geocoder conversion code to seeds file 
# - run rails db:seed to test if the brewery will have the lng lat 
# - run db:seed with all breweries (entire csv)
# - Test geokit method of checking distance between two coordinates
# - add geokit distance method to locations controller 
# - from the geokit method, store distances and location id in an array of hashes
# - sort the array from least to greatest and pull the first 5 distances and locations
# - return those 5 distances and locations from the locations id to the user
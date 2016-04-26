# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

city = City.create({ cityname: 'Washington D.C.'})

city.shops.create({ shopname: 'Starbucks', properties: {
  'Outdoor Seating': true,
  'Wifi': true,
  'Soy Milk': true,
  'Music': true,
  }})

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

city = City.create({ cityname: 'Washington D.C.'})
city = City.create({ cityname: 'New York City'})
# city = City.create({ cityname: 'Baltimore'})
# city = City.create({ cityname: 'San Diego'})
# city = City.create({ cityname: 'Arlington'})

city.shops.create({ shopname: 'Starbucks', location: 'Washington D.C.', properties: {
  'Outdoor Seating': true,
  'Wifi': true,
  'Soy Milk': true,
  'Music': false,
  }})

city.shops.create({ shopname: 'Port City Java', location: 'Washington D.C.', properties: {
    'Outdoor Seating': true,
    'Wifi': true,
    'Soy Milk': false,
    'Music': true,
    }})
city.shops.create({ shopname: 'Bean & Bite', location: 'Washington D.C.', properties: {
      'Outdoor Seating': true,
      'Wifi': true,
      'Soy Milk': true,
      'Music': false,
      }})
city.shops.create({ shopname: 'Starbucks', location: 'Washington D.C.', properties: {
        'Outdoor Seating': true,
        'Wifi': true,
        'Soy Milk': true,
        'Music': true,
        }})

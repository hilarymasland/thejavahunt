# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
City.destroy_all

washingtondc = City.create({ cityname: 'Washington D.C.'})
newyorkcity = City.create({ cityname: 'New York City'})
# city = City.create({ cityname: 'Baltimore'})
# city = City.create({ cityname: 'San Diego'})
# city = City.create({ cityname: 'Arlington'})


washingtondc.shops.create({ shopname: 'Port City Java', location: 'Washington D.C.', properties: {
    'Outdoor Seating': true,
    'Wifi': true,
    'Soy Milk': true,
    'Music': true,
    'Sandwiches': true,
    'Doughnuts': false,
    'Fruit': false,
    'Free Refills': true,
    'Flavored Coffee': true,
    'Alcohol': false
    }})
washingtondc.shops.create({ shopname: 'Bean & Bite', location: 'Washington D.C.', properties: {
      'Outdoor Seating': true,
      'Wifi': true,
      'Soy Milk': true,
      'Music': false,
      'Sandwiches': true,
      'Doughnuts': false,
      'Fruit': false,
      'Free Refills': true,
      'Flavored Coffee': true,
      'Alcohol': false
      }})
washingtondc.shops.create({ shopname: 'Starbucks', location: 'Washington D.C.', properties: {
        'Outdoor Seating': true,
        'Wifi': true,
        'Soy Milk': true,
        'Music': true,
        'Sandwiches': true,
        'Doughnuts': false,
        'Fruit': false,
        'Free Refills': true,
        'Flavored Coffee': true,
        'Alcohol': true
        }})

newyorkcity.shops.create({ shopname: 'Starbucks', location: 'New York City', properties: {
          'Outdoor Seating': false,
          'Wifi': true,
          'Soy Milk': true,
          'Music': true,
          'Sandwiches': true,
          'Doughnuts': false,
          'Fruit': false,
          'Free Refills': true,
          'Flavored Coffee': true,
          'Alcohol': true
          }})
newyorkcity.shops.create({ shopname: 'Dunkin Donuts', location: 'New York City', properties: {
            'Outdoor Seating': true,
            'Wifi': false,
            'Soy Milk': true,
            'Music': true,
            'Sandwiches': true,
            'Doughnuts': true,
            'Fruit': false,
            'Free Refills': true,
            'Flavored Coffee': true,
            'Alcohol': false
            }})

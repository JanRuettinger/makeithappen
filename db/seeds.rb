# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first
Item.create(name: "T-Shirt", address: "Marienplatz 8", zip: "80331", requested: "1",
            url: "google.com", email: "test@test.com")

Item.create(name: "Pants", address: "Nordallee 25", zip: "85356", requested: "1",
            url: "google.com", email: "test2@test.com")

Item.create(name: "Underwear", address: "Geschwister-Scholl-Platz 1", zip: "80539", requested: "1",
            url: "google.com", email: "test3@test.com")

Item.create(name: "Shorts", address: "Am Olympiapark 1", zip: "80809", requested: "0",
            url: "google.com", email: "test4@test.com")

Item.create(name: "Shoes", address: "Arcisstraße 21", zip: "80333", requested: "0",
            url: "google.com", email: "test5@test.com")

Item.create(name: "Socks", address: "HMessegelände", zip: "81823", requested: "0",
            url: "google.com", email: "test6@test.com")



CharityOrg.create(name: "Rotes Kreuz", address: "Garmischer Straße 19", zip: "81373", password: "test",
            url: "google.com", email: "test1@test.com")

CharityOrg.create(name: "Greenpeace", address: "Frohschammer Straße 14", zip: "80807", password: "test",
            url: "google.com", email: "test2@test.com")

CharityOrg.create(name: "Rettet die Bienen", address: "Nymphenburger Str. 64", zip: "80335", password: "test",
            url: "google.com", email: "test3@test.com")

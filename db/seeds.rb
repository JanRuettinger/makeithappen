# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first
Item.create(name: "T-Shirt", address: "Hausmannstrasse 12a", zip: "10027", requested: "0",
            url: "google.com", email: "test@test.com")

Item.create(name: "Pants", address: "Hausmannstrasse 12a", zip: "10027", requested: "1",
            url: "google.com", email: "test2@test.com")

Item.create(name: "Underwear", address: "Hausmannstrasse 12a", zip: "10028", requested: "0",
            url: "google.com", email: "test3@test.com")

Item.create(name: "Shorts", address: "Hausmannstrasse 12a", zip: "10038", requested: "1",
            url: "google.com", email: "test4@test.com")

Item.create(name: "Shoes", address: "Hausmannstrasse 12a", zip: "10029", requested: "0",
            url: "google.com", email: "test5@test.com")

Item.create(name: "Socks", address: "Hausmannstrasse 12a", zip: "10029", requested: "0",
            url: "google.com", email: "test6@test.com")



CharityOrg.create(name: "Rotes Kreuz", address: "Im Garten 12a", zip: "10027", password: "test",
            url: "google.com", email: "test1@test.com")

CharityOrg.create(name: "Greenpeace", address: "Fussballplatz 37", zip: "10028", password: "test",
            url: "google.com", email: "test2@test.com")

CharityOrg.create(name: "Rettet die Bienen", address: "nStadio 10", zip: "10029", password: "test",
            url: "google.com", email: "test3@test.com")

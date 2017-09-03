# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Landmark.destroy_all
City.destroy_all

city1 = City.create!({ name: "Amsterdam", province: "Noord-Holland", logo_url: "http://vlag-van-amsterdam.vlaggen-winkel.nl/shared/fsimages/10016393gr.gif" })
city2 = City.create!({ name: "Rotterdam", province: "Zuid-Holland", logo_url: "http://www.freestylevoetbal.nl/wp-content/uploads/2014/05/gemeente-rotterdam-freestyle-voetbal.jpg" })
city3 = City.create!({ name: "Den Haag", province: "Zuid-Holland", logo_url: "http://denhaagfm.nl/wp-content/uploads/2016/03/vrede-en-recht-logo-300x300.png" })
city4 = City.create!({ name: "Utrecht", province: "Utrecht", logo_url: "http://duurzaam-actueel.nl/wp-content/uploads/Gemeente-Utrecht-logo.png" })

cities_count = City.length
puts "#{cities_count} cities were created."


Landmark.create!([
  { name: "RijksMuseum", kind: "museum", image_url: "http://www.artxplain.nl/files/4414/0594/3074/rijksMuseum.jpg", build_year: "1885", entrance_fee: false, city: city1 },
  { name: "Anne Frank Huis", kind: "museum", image_url: "https://www.amsterdam.nl/publish/pages/463891/afb_1_anne_frank_huis_met_nieuwbouw.png", build_year: "1960", entrance_fee: true, city: city1 },
  { name: "Stedelijk museum", kind: "museum", image_url: "https://www.amsterdam.info/photos/content/presentation/1484087709-amsterdam-museum-stedelijk-building.png", build_year: "1874", entrance_fee: true, city: city1 },
  { name: "Dam Square", kind: "square", image_url: "https://static1.persgroep.net/parool/image/96624545-b05e-4517-b221-006e3f9f0c3e?width=664&height=374", build_year: "1275", entrance_fee: true, city: city1 },
  { name: "Westerkerk", kind: "church", image_url: "https://www.protestants.amsterdam/images/stories/wijkkerken/nieuw/westerkerk.jpg", build_year: "1631", entrance_fee: false, city: city1 }
])

landmarks_count = Landmark.length
puts "#{landmarks_count} landmarks were created."

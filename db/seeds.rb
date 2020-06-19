
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

Category.destroy_all
User.destroy_all
Offer.destroy_all
Booking.destroy_all

italian = URI.open('https://www.tourdumonde.fr/wordpress/wp-content/uploads/pizza3.jpg')
french = URI.open('https://www.mamazsocialfood.com/photos/_themes/themes.cuisine-francaise.jpg')
indian = URI.open('https://data.tibettravel.org/assets/images/Tibet-bhutan-tour/indian-food-in-Lhasa.jpg')
japanese = URI.open('https://jpninfo.com/wp-content/uploads/2018/03/sushi-platter.jpg')

category_italian = Category.create(name: 'italian')
category_french = Category.create(name: 'french')
category_indian = Category.create(name: 'indian')
category_japanese = Category.create(name: 'japanese')

category_italian.photo.attach(io: italian, filename: 'italian.png', content_type: 'image/png')
category_french.photo.attach(io: french, filename: 'french.png', content_type: 'image/png')
category_indian.photo.attach(io: indian, filename: 'indian.png', content_type: 'image/png')
category_japanese.photo.attach(io: japanese, filename: 'japanese.png', content_type: 'image/png')

category_italian.save
category_french.save
category_indian.save
category_japanese.save

user_2 = User.create!(email: "victor@gmail.com", password: "password", name: "Victor")
user_3 = User.create!(email: "anne@gmail.com", password: "password", name: "Anne")
user_1 = User.create!(email: "vincent@gmail.com", password: "password", name: "Vincent")
user_4 = User.create!(email: "gasp@gmail.com", password: "password", name: "Fou Fou")

offer_1 = Offer.new(title: "Carbonara", description:"Spagetti,Creme", price: 20, user: user_1, category: category_italian, address: "19 rue Inkermann, 59000 LILLE")

offer_3 = Offer.new(title: "Boeuf Bourgignon", description: "Boeuf, beurre", price: 40, user: user_3, category: category_french, address: "23 rue Inkermann, 59000 LILLE")

offer_4 = Offer.new(title: "Pas de Sushi", description: "mieux que au camping des flots bleu ", price: 1, user: user_4, address: "2 Avenue des Saules, 59160 LILLE ")


carbonara = URI.open('https://images.pexels.com/photos/998246/pexels-photo-998246.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
boeuf_bourgignon = URI.open('https://www.istockphoto.com/photo/boeuf-bourguignon-french-dish-gm1129663752-298499301?utm_campaign=srp_photos_noresults&utm_content=https%3A%2F%2Fwww.pexels.com%2Fsearch%2Fboeuf%2520bourgignon%2520%2F&utm_medium=affiliate&utm_source=pexels&utm_term=boeuf%20bourgignon')
sushi = URI.open('https://images.pexels.com/photos/357756/pexels-photo-357756.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')

offer_1.photo.attach(io: carbonara, filename: 'carbonara.png', content_type: 'image/png' )
offer_3.photo.attach(io: boeuf_bourgignon, filename: 'boeuf_bourgignon.png', content_type: 'image/png')
offer_4.photo.attach(io: sushi, filename: 'sushi.png', content_type: 'image/png' )

offer_1.save
offer_3.save
offer_4.save

booking_1 = Booking.create!(date: "Fri, 03 Jul 2020 14:59:00 UTC +00:00", user: user_2, offer: offer_1)
booking_3 = Booking.create!(date: "Sat, 30 Jun 2020 17:00:00 UTC +00:00", user: user_4, offer: offer_3)


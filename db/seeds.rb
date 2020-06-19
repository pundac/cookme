
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

Category.destroy_all

italian = URI.open('https://www.tourdumonde.fr/wordpress/wp-content/uploads/pizza3.jpg')
french = URI.open('https://www.mamazsocialfood.com/photos/_themes/themes.cuisine-francaise.jpg')
indian = URI.open('https://data.tibettravel.org/assets/images/Tibet-bhutan-tour/indian-food-in-Lhasa.jpg')
japanese = URI.open('https://jpninfo.com/wp-content/uploads/2018/03/sushi-platter.jpg')

category_italian = Category.new(name: 'italian')
category_french = Category.new(name: 'french')
category_indian = Category.new(name: 'indian')
category_japanese = Category.new(name: 'japanese')

category_italian.photo.attach(io: italian, filename: 'italian.png', content_type: 'image/png')
category_french.photo.attach(io: french, filename: 'french.png', content_type: 'image/png')
category_indian.photo.attach(io: indian, filename: 'indian.png', content_type: 'image/png')
category_japanese.photo.attach(io: japanese, filename: 'japanese.png', content_type: 'image/png')

category_italian.save
category_french.save
category_indian.save
category_japanese.save
User.destroy_all
Offer.destroy_all
Booking.destroy_all
user_1 = User.new(email: "v.gmail", name: "Vincent")
offer_1 = Offer.new(title: "Carbonara", description:"Spagetti,Creme", price: 20, user_id: 1, category_id: 1, address: "19 rue Inkermann, 59000 LILLE")
booking_1 = Booking.new(date: Fri, 03 Jul 2020 14:59:00 UTC +00:00, user_id: 2, offer_id:1)

user_2 = User.new(email: "l.gmail", name: "Victor")


user_3 = User.new(email: "ac.gmail", name: "Anne")
offer_3 = Offer.new(title: "Boeuf Bourgignon", description: "Boeuf, beurre", price: 40, user_id: 3, category_id: 2, address: "23 rue Inkermann, 59000 LILLE")
booking_3 = Booking.new(date: Sat, 30 Jun 2020 17:00:00 UTC +00:00, user_id: 4, offer_id:3)

user_4 = User.new(email: "Gasp.gmail", name: "Fou Fou")
offer_4 = Offer.new(title: "Pas de Sushi", description: "mieux que au camping des flots bleu ", price: 1, user_id: 4, address: "2 Avenue des Saules, 59160 LILLE ")
offer_

carbonara = URI.open('https://images.pexels.com/photos/998246/pexels-photo-998246.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
boeuf_bourgignon = URI.open('https://www.istockphoto.com/photo/boeuf-bourguignon-french-dish-gm1129663752-298499301?utm_campaign=srp_photos_noresults&utm_content=https%3A%2F%2Fwww.pexels.com%2Fsearch%2Fboeuf%2520bourgignon%2520%2F&utm_medium=affiliate&utm_source=pexels&utm_term=boeuf%20bourgignon')
sushi = URI.open('https://images.pexels.com/photos/357756/pexels-photo-357756.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')

offer_1.photo.attach(io: carbonara, filename: 'carbonara.png', content_type: 'image/png' )
offer_3.photo.attach(io: boeuf_bourgignon, filename: 'boeuf_bourgignon.png', content_type: 'image/png')
offer_4.photo.attach(io: sushi, filename: 'sushi.png', content_type: 'image/png' )

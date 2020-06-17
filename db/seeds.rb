
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


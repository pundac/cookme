require "open-uri"

Category.destroy_all

italian = URI.open('https://lh3.googleusercontent.com/proxy/h7hqoxxzRBUJOaOBtkPlpMgxpUvpqtPVw0WEta3f1VKlMYjjC8i4feeNoHfXBdAXRo16WemGJuzbowrktiHr797o4isGgUnRaG6S0ajr-xmqdSt6-cI73Rfb4_czK5oeJgdvr3aYiQ')
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

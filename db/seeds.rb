# User.destroy_all
# Fruit.destroy_all
# Item.destroy_all
# Smoothie.destroy_all
# FruitsSmoothy.destroy_all

# users = [User.create(name: "Jason Beneducci", username: "JasonBeneducci", password: "Jason"),
#         User.create(name: "Andy Choi", username: "AndyChoi", password: "Andy")]

# fruits = [Fruit.create(name: "Orange", description: "High in Vitamin C.", image: "🍊"),
#         Fruit.create(name: "Banana", description: "High in Potassium.", image: "🍌"),
#         Fruit.create(name: "Strawberry", description: "Issa Strawberry", image: "🍓"),
#         Fruit.create(name: "Apple", description: "High in Antioxidants.", image: "🍎"),
#         Fruit.create(name: "Pear", description: "High in Potassium.", image: "🍐"),
#         Fruit.create(name: "Lemon", description: "High in Potassium.", image: "🍋"),
#         Fruit.create(name: "Grape", description: "High in Potassium.", image: "🍇"),
#         Fruit.create(name: "Tomato", description: "High in Potassium.", image: "🍅"),
#         Fruit.create(name: "Broccoli", description: "High in Potassium.", image: "🥦"),
#         Fruit.create(name: "Kale", description: "High in Potassium.", image: "🥬"),
#         Fruit.create(name: "Coconut", description: "High in Potassium.", image: "🥥"),
#         Fruit.create(name: "Mango", description: "High in Potassium.", image: "🥭"),
#         Fruit.create(name: "Pineapple", description: "High in Potassium.", image: "🍍"),
#         Fruit.create(name: "Kiwi", description: "High in Potassium.", image: "🥝"),
#         Fruit.create(name: "Peach", description: "High in Potassium.", image: "🍑"),
#         Fruit.create(name: "Cherry", description: "High in Potassium.", image: "🍒"),
#         Fruit.create(name: "Watermelon", description: "High in Potassium.", image: "🍉"),
#         Fruit.create(name: "Cucumber", description: "High in Potassium.", image: "🥒"),
#         Fruit.create(name: "Carrot", description: "High in Potassium.", image: "🥕")]


# 20.times do
#     Item.create(user: users.sample, fruit: fruits.sample, quantity: rand(1..100))
# end

# orange = Fruit.find_by(name: "Orange")
# banana = Fruit.find_by(name: "Banana")
# strawberry = Fruit.find_by(name: "Strawberry")
# apple = Fruit.find_by(name: "Apple")
# pear = Fruit.find_by(name: "Pear")
# lemon = Fruit.find_by(name: "Lemon")
# grape = Fruit.find_by(name: "Grape")
# tomato = Fruit.find_by(name: "Tomato")
# broccoli = Fruit.find_by(name: "Broccoli")
# kale = Fruit.find_by(name: "Kale")
# coconut = Fruit.find_by(name: "Coconut")
# mango = Fruit.find_by(name: "Mango")
# pineapple = Fruit.find_by(name: "Pineapple")
# kiwi = Fruit.find_by(name: "Kiwi")
# peach = Fruit.find_by(name: "Peach")
# cherry = Fruit.find_by(name: "Cherry")
# watermelon = Fruit.find_by(name: "Watermelon")
# cucumber = Fruit.find_by(name: "Cucumber")
# carrot = Fruit.find_by(name: "Carrot")

# strawberry_banana = Smoothie.create(name: "Strawberry Banana", image: "https://www.cookingclassy.com/wp-content/uploads/2016/02/strawberry_banana_oat_smoothie11..jpg")
# tropical_sunrise = Smoothie.create(name: "Tropical Sunrise", image: "https://lilluna.com/wp-content/uploads/2017/05/aloha-smoothie-3.jpg")
# green_machine = Smoothie.create(name: "Green Machine", image: "https://cdn.crownmediadev.com/7a/66/23d3ac9a4727b8aaf947df8c78a5/home-family-the-glowing-green-smoothie.jpg")
# red_drink = Smoothie.create(name: "Red Drink", image: "https://www.dinneratthezoo.com/wp-content/uploads/2018/05/cherry-smoothie-4.jpg")
# cool_summer = Smoothie.create(name: "Cool Summer", image: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2014/5/12/0/FNK_Watermelon-Lemonade-Slushie_s4x3.jpg.rend.hgtvcom.826.620.suffix/1399928912250.jpeg")
# vegetable = Smoothie.create(name: "Vegetable", image: "http://parsleyinmyteeth.com/wp-content/uploads/2013/10/Lunch-Smoothie-after1-680x454.jpg")
# hawaiian_breeze = Smoothie.create(name: "Hawaiian Breeze", image: "https://www.gimmesomeoven.com/wp-content/uploads/2015/04/Tropical-Smoothie-4.jpg")
# simply_strawberry = Smoothie.create(name: "Simply Strawberry", image: "https://media.istockphoto.com/photos/strawberry-smoothie-picture-id576740204?k=6&m=576740204&s=612x612&w=0&h=vwehZe6tKG4inQgg4qT9QeZqwxDpeTtyrKzmBd4Rkqw=")
# detox = Smoothie.create(name: "Detox", image: "https://www.theroastedroot.net/wp-content/uploads/2018/01/liver_detox_smoothie_2.jpg")
# energy_boost = Smoothie.create(name: "Energy Boost", image: "https://www.artfrommytable.com/wp-content/uploads/2018/08/strawberry_pineapple_smoothie-5.jpg")

# FruitsSmoothy.create(smoothie_id: strawberry_banana.id, fruit_id: strawberry.id, quantity: 10)
# FruitsSmoothy.create(smoothie_id: strawberry_banana.id, fruit_id: banana.id, quantity: 2)
# FruitsSmoothy.create(smoothie_id: tropical_sunrise.id, fruit_id: orange.id, quantity: 2)
# FruitsSmoothy.create(smoothie_id: tropical_sunrise.id, fruit_id: lemon.id, quantity: 0.5)
# FruitsSmoothy.create(smoothie_id: tropical_sunrise.id, fruit_id: pineapple.id, quantity: 0.25)
# FruitsSmoothy.create(smoothie_id: tropical_sunrise.id, fruit_id: pear.id, quantity: 1)
# FruitsSmoothy.create(smoothie_id: green_machine.id, fruit_id: broccoli.id, quantity: 2)
# FruitsSmoothy.create(smoothie_id: green_machine.id, fruit_id: kale.id, quantity: 1)
# FruitsSmoothy.create(smoothie_id: green_machine.id, fruit_id: apple.id, quantity: 1)
# FruitsSmoothy.create(smoothie_id: green_machine.id, fruit_id: kiwi.id, quantity: 2)
# FruitsSmoothy.create(smoothie_id: red_drink.id, fruit_id: apple.id, quantity: 1)
# FruitsSmoothy.create(smoothie_id: red_drink.id, fruit_id: strawberry.id, quantity: 5)
# FruitsSmoothy.create(smoothie_id: red_drink.id, fruit_id: cherry.id, quantity: 10)
# FruitsSmoothy.create(smoothie_id: red_drink.id, fruit_id: apple.id, quantity: 1)
# FruitsSmoothy.create(smoothie_id: red_drink.id, fruit_id: peach.id, quantity: 0.5)
# FruitsSmoothy.create(smoothie_id: cool_summer.id, fruit_id: watermelon.id, quantity: 0.5)
# FruitsSmoothy.create(smoothie_id: cool_summer.id, fruit_id: lemon.id, quantity: 1)
# FruitsSmoothy.create(smoothie_id: vegetable.id, fruit_id: kale.id, quantity: 1)
# FruitsSmoothy.create(smoothie_id: vegetable.id, fruit_id: broccoli.id, quantity: 3)
# FruitsSmoothy.create(smoothie_id: vegetable.id, fruit_id: cucumber.id, quantity: 1)
# FruitsSmoothy.create(smoothie_id: vegetable.id, fruit_id: tomato.id, quantity: 2)
# FruitsSmoothy.create(smoothie_id: vegetable.id, fruit_id: carrot.id, quantity: 2)
# FruitsSmoothy.create(smoothie_id: hawaiian_breeze.id, fruit_id: coconut.id, quantity: 0.25)
# FruitsSmoothy.create(smoothie_id: hawaiian_breeze.id, fruit_id: pineapple.id, quantity: 0.25)
# FruitsSmoothy.create(smoothie_id: hawaiian_breeze.id, fruit_id: mango.id, quantity: 1)
# FruitsSmoothy.create(smoothie_id: simply_strawberry.id, fruit_id: strawberry.id, quantity: 15)
# FruitsSmoothy.create(smoothie_id: simply_strawberry.id, fruit_id: grape.id, quantity: 5)
# FruitsSmoothy.create(smoothie_id: detox.id, fruit_id: orange.id, quantity: 1)
# FruitsSmoothy.create(smoothie_id: detox.id, fruit_id: lemon.id, quantity: 1)
# FruitsSmoothy.create(smoothie_id: detox.id, fruit_id: carrot.id, quantity: 2)
# FruitsSmoothy.create(smoothie_id: detox.id, fruit_id: cucumber.id, quantity: 1)
# FruitsSmoothy.create(smoothie_id: energy_boost.id, fruit_id: strawberry.id, quantity: 5)
# FruitsSmoothy.create(smoothie_id: energy_boost.id, fruit_id: coconut.id, quantity: 0.25)
# FruitsSmoothy.create(smoothie_id: energy_boost.id, fruit_id: kiwi.id, quantity: 3)
# FruitsSmoothy.create(smoothie_id: energy_boost.id, fruit_id: pineapple.id, quantity: 0.25)
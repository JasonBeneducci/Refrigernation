# User.destroy_all
# Fruit.destroy_all
# Item.destroy_all
# Smoothie.destroy_all

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

orange = Fruit.find_by(name: "Orange")
banana = Fruit.find_by(name: "Banana")
strawberry = Fruit.find_by(name: "Strawberry")
apple = Fruit.find_by(name: "Apple")
pear = Fruit.find_by(name: "Pear")
lemon = Fruit.find_by(name: "Lemon")
grape = Fruit.find_by(name: "Grape")
tomato = Fruit.find_by(name: "Tomato")
broccoli = Fruit.find_by(name: "Broccoli")
kale = Fruit.find_by(name: "Kale")
coconut = Fruit.find_by(name: "Coconut")
mango = Fruit.find_by(name: "Mango")
pineapple = Fruit.find_by(name: "Pineapple")
kiwi = Fruit.find_by(name: "Kiwi")
peach = Fruit.find_by(name: "Peach")
cherry = Fruit.find_by(name: "Cherry")
watermelon = Fruit.find_by(name: "Watermelon")
cucumber = Fruit.find_by(name: "Cucumber")
carrot = Fruit.find_by(name: "Carrot")

strawberry_banana = Smoothie.create(name: "Strawberry Banana")
tropical_sunrise = Smoothie.create(name: "Tropical Sunrise")
green_machine = Smoothie.create(name: "Green Machine")
red_drink = Smoothie.create(name: "Red Drink")
cool_summer = Smoothie.create(name: "Cool Summer")
vegetable = Smoothie.create(name: "Vegetable")
hawaiian_breeze = Smoothie.create(name: "Hawaiian Breeze")
simply_strawberry = Smoothie.create(name: "Simply Strawberry")
detox = Smoothie.create(name: "Detox")
energy_boost = Smoothie.create(name: "Energy Boost")

FruitsSmoothie.create(smoothie_id: strawberry_banana.id, fruit_id: strawberry.id, quantity: 10)
FruitsSmoothie.create(smoothie_id: strawberry_banana.id, fruit_id: banana.id, quantity: 2)
FruitsSmoothie.create(smoothie_id: tropical_sunrise.id, fruit_id: orange.id, quantity: 2)
FruitsSmoothie.create(smoothie_id: tropical_sunrise.id, fruit_id: lemon.id, quantity: 1)
FruitsSmoothie.create(smoothie_id: tropical_sunrise.id, fruit_id: orange.id, quantity: 2)
FruitsSmoothie.create(smoothie_id: tropical_sunrise.id, fruit_id: orange.id, quantity: 2)
FruitsSmoothie.create(smoothie_id: tropical_sunrise.id, fruit_id: orange.id, quantity: 2)
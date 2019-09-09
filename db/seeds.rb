User.destroy_all
Fruit.destroy_all
Item.destroy_all

users = [User.create(name: "Jason Beneducci", username: "JasonBeneducci", password: "Jason"),
        User.create(name: "Andy Choi", username: "AndyChoi", password: "Andy")]

fruits = [Fruit.create(name: "Orange", description: "High in Vitamin C.", image: "🍊"),
        Fruit.create(name: "Banana", description: "High in Potassium.", image: "🍌"),
        Fruit.create(name: "Strawberry", description: "Issa Strawberry", image: "🍓"),
        Fruit.create(name: "Apple", description: "High in Antioxidants.", image: "🍎"),
        Fruit.create(name: "Pear", description: "High in Potassium.", image: "🍐"),
        Fruit.create(name: "Lemon", description: "High in Potassium.", image: "🍋"),
        Fruit.create(name: "Grape", description: "High in Potassium.", image: "🍇"),
        Fruit.create(name: "Tomato", description: "High in Potassium.", image: "🍅"),
        Fruit.create(name: "Broccoli", description: "High in Potassium.", image: "🥦"),
        Fruit.create(name: "Kale", description: "High in Potassium.", image: "🥬"),
        Fruit.create(name: "Coconut", description: "High in Potassium.", image: "🥥"),
        Fruit.create(name: "Mango", description: "High in Potassium.", image: "🥭"),
        Fruit.create(name: "Pineapple", description: "High in Potassium.", image: "🍍"),
        Fruit.create(name: "Kiwi", description: "High in Potassium.", image: "🥝"),
        Fruit.create(name: "Peach", description: "High in Potassium.", image: "🍑"),
        Fruit.create(name: "Cherry", description: "High in Potassium.", image: "🍒"),
        Fruit.create(name: "Watermelon", description: "High in Potassium.", image: "🍉"),
        Fruit.create(name: "Cucumber", description: "High in Potassium.", image: "🥒"),
        Fruit.create(name: "Carrot", description: "High in Potassium.", image: "🥕")]


20.times do
    Item.create(user: users.sample, fruit: fruits.sample, quantity: rand(1..100))
end
User.destroy_all
u1 = User.create({
  name: "Vegodash",
  email: "vegodash@email.com",
  password: "chicken",
  password_confirmation: "chicken",
  image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
  mobile: "0494384534",
  bio: "I love the vegetables",
  likes: "veggies",
  dislikes: "chicken",
  allergies: "peanuts",
  building_number: "23",
  street: "Hickson Rd",
  city: "Sydney",
  state: "NSW",
  country: "Australia"
  })
u2 = User.create({
  name: "Pine Apple",
  email: "pineapple@email.com",
  password: "chicken",
  password_confirmation: "chicken",
  image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
  mobile: "0494384534",
  bio: "I love the pineapples",
  likes: "pineapples",
  dislikes: "carrots",
  allergies: "watermelon",
  building_number: "23",
  street: "Hickson Rd",
  city: "Sydney",
  state: "NSW",
  country: "Australia"
  })
u3 = User.create({
  name: "Mr Carrot",
  email: "carrot@email.com",
  password: "chicken",
  password_confirmation: "chicken",
  image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
  mobile: "0494384534",
  bio: "I love the carrots",
  likes: "carrots",
  dislikes: "pineapples",
  allergies: "cheese",
  building_number: "45",
  street: "Kangaroo St",
  city: "Manly",
  state: "NSW",
  country: "Australia"
  })
u4 = User.create({
  name: "Dawton",
  email: "ddawton0@email.com",
  password: "chicken",
  password_confirmation: "chicken",
  image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
  mobile: "0494384534",
  bio: "I love the vegetables",
  likes: "veggies",
  dislikes: "yogurt",
  allergies: "dairy",
  building_number: "1",
  street: "Koala Lane",
  city: "Chatswood",
  state: "NSW",
  country: "Australia"
  })
u5 = User.create({
  name: "Studdard",
  email: "studdard2@email.com",
  password: "chicken",
  password_confirmation: "chicken",
  image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
  mobile: "0494384534",
  bio: "I love the pineapples",
  likes: "pineapples",
  dislikes: "mayonnaise",
  allergies: "eggs",
  building_number: "46",
  street: "Holmwood St",
  city: "Newtown",
  state: "NSW",
  country: "Australia"
  })
u6 = User.create({
  name: "Soffe",
  email: "soffe3@email.com",
  password: "chicken",
  password_confirmation: "chicken",
  image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
  mobile: "0494384534",
  bio: "I love the carrots",
  likes: "carrots",
  dislikes: "tofu",
  allergies: "soy",
  building_number: "74",
  street: "Garden St",
  city: "Alexandria",
  state: "NSW",
  country: "Australia"
  })
u7 = User.create({
  name: "Haynes",
  email: "haynes4@email.com",
  password: "chicken",
  password_confirmation: "chicken",
  image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
  mobile: "0494384534",
  bio: "I love the vegetables",
  likes: "veggies",
  dislikes: "cereal",
  allergies: "wheat",
  building_number: "42",
  street: "Oxford St",
  city: "Darlinghurst",
  state: "NSW",
  country: "Australia"
  })
u8 = User.create({
  name: "Lambshine",
  email: "lambshine5@email.com",
  password: "chicken",
  password_confirmation: "chicken",
  image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
  mobile: "0494384534",
  bio: "I love the pineapples",
  likes: "pineapples",
  dislikes: "seafood",
  allergies: "shellfish",
  building_number: "2",
  street: "Crown St",
  city: "Woolloomooloo",
  state: "NSW",
  country: "Australia"
  })
u9 = User.create({
  name: "Cornelissen",
  email: "cornelissen6@email.com",
  password: "chicken",
  password_confirmation: "chicken",
  image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
  mobile: "0494384534",
  bio: "I love the carrots",
  likes: "carrots",
  dislikes: "Marzipan",
  allergies: "cheese",
  building_number: "21",
  street: "Vicar St",
  city: "Coogee",
  state: "NSW",
  country: "Australia"
  })
u10 = User.create({
  name: "Lippingwell",
  email: "lippingwell7.com",
  password: "chicken",
  password_confirmation: "chicken",
  image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
  mobile: "0494384534",
  bio: "I love the vegetables",
  likes: "veggies",
  dislikes: "liquorice",
  allergies: "peanuts",
  building_number: "23",
  street: "Lombard St",
  city: "Glebe",
  state: "NSW",
  country: "Australia"
  })
  puts "User Count: #{User.all.count }"

  Item.destroy_all
  i1 = Item.create({
    name: "Pineapple",
    description: "I'm tasty and in good condition",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    user_id: u2.id
    })
  i2 = Item.create({
    name: "Carrot",
    description: "I'm in poor condition and not very tasty",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    user_id: u2.id
    })
  i3 = Item.create({
    name: "Apple",
    description: "I'm juicy and crunchy, yummmmmmy come and get me",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    user_id: u2.id
    })
  i4 = Item.create({
    name: "Brussel Sprouts",
    description: "Whole bag of fresh Brussel Sprouts",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    user_id: u4.id
    })
  i5 = Item.create({
    name: "Olives",
    description: "Home grown and made pickled olives",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    user_id: u8.id
    })
  i6 = Item.create({
    name: "Mushrooms",
    description: "Straight out of my garden, heaps to share",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    user_id: u8.id
    })
  i7 = Item.create({
    name: "Organic Cheese",
    description: "Cheese samples from a gift basket",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    user_id: u6.id
    })
  i8 = Item.create({
    name: "Carrot",
    description: "I'm in poor condition and not very tasty",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    user_id: u5.id
    })
  i9 = Item.create({
    name: "Potatoes",
    description: "Leftover uncooked potatoes from a 1kg bag",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    user_id: u9.id
    })
  i10 = Item.create({
    name: "Bread Rolls",
    description: "Overstocked for a party and heaps of unused bread rolls",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    user_id: u2.id
    })
  i11 = Item.create({
    name: "Butter",
    description: "Massive tub of butter",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    user_id: u3.id
    })
  i12 = Item.create({
    name: "Spinach",
    description: "Bag of fresh spinach ideal for green juicing or salads",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    user_id: u9.id
    })
puts "Item Count: #{Item.all.count }"
Comment.destroy_all
c1 = Comment.create ({
      post: "Your pineapple changed my life",
      user_id: u1.id,
      item_id: i1.id
    })
c2 = Comment.create ({
      post: "Your carrots changed my life",
      user_id: u3.id,
      item_id: i2.id
    })
puts "Comment Count: #{Comment.all.count }"
  Item.destroy_all
  i1 = Item.create({
    name: "Pineapple",
    description: "I'm tasty and in good condition",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    user_id: u2.id
    })
  i2 = Item.create({
    name: "Carrot",
    description: "I'm in poor condition and not very tasty",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    user_id: u2.id
    })
  i3 = Item.create({
    name: "Apple",
    description: "I'm juicy and crunchy, yummmmmmy come and get me",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    user_id: u2.id
    })
  i4 = Item.create({
    name: "Brussel Sprouts",
    description: "Whole bag of fresh Brussel Sprouts",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    user_id: u4.id
    })
  i5 = Item.create({
    name: "Olives",
    description: "Home grown and made pickled olives",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    user_id: u8.id
    })
  i6 = Item.create({
    name: "Mushrooms",
    description: "Straight out of my garden, heaps to share",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    user_id: u8.id
    })
  i7 = Item.create({
    name: "Organic Cheese",
    description: "Cheese samples from a gift basket",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    user_id: u9.id
    })
  i8 = Item.create({
    name: "Carrot",
    description: "I'm in poor condition and not very tasty",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    user_id: u7.id
    })
  i9 = Item.create({
    name: "Potatoes",
    description: "Leftover uncooked potatoes from a 1kg bag",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    user_id: u2.id
    })
  i10 = Item.create({
    name: "Bread Rolls",
    description: "Overstocked for a party and heaps of unused bread rolls",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    user_id: u4.id
    })
  i11 = Item.create({
    name: "Butter",
    description: "Massive tub of butter",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    user_id: u8.id
    })
  i12 = Item.create({
    name: "Spinach",
    description: "Bag of fresh spinach ideal for green juicing or salads",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    user_id: u3.id
    })
puts "Item Count: #{Item.all.count }"
Comment.destroy_all
c1 = Comment.create ({
      post: "Your pineapple changed my life",
      user_id: u1.id,
      item_id: i1.id
    })
c2 = Comment.create ({
      post: "Your carrots changed my life",
      user_id: u3.id,
      item_id: i2.id
    })
puts "Comment Count: #{Comment.all.count }"

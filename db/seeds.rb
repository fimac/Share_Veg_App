User.destroy_all

u1 = User.create({
  name: "Vegodash",
  email: "vegodash@email.com",
  image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
  bio: "I love the vegetables",
  likes: "veggies",
  dislikes: "chicken",
  allergies: "peanuts"
  })

u2 = User.create({
  name: "Pine Apple",
  email: "pineapple@email.com",
  image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
  bio: "I love the pineapples",
  likes: "pineapples",
  dislikes: "carrots",
  allergies: "watermelon"
  })

u3 = User.create({
  name: "Mr Carrot",
  email: "carrot@email.com",
  image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
  bio: "I love the carrots",
  likes: "carrots",
  dislikes: "pineapples",
  allergies: "cheese"
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

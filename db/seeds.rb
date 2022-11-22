puts "Cleaning DB....."
Booking.destroy_all
Dinosaur.destroy_all
User.destroy_all
puts "Creating users...."
users = []
users << User.create!(first_name: "Olivier", last_name: "KERMOAL", email: "olivier@me.com", password: "secret")
users << User.create!(first_name: "Gwendal", last_name: "LE BRIS", email: "gwendal@me.com", password: "secret")
users << User.create!(first_name: "Steven", last_name: "DORION", email: "steven@me.com", password: "secret")
users << User.create!(first_name: "Clément", last_name: "CORDEIRO", email: "clement@me.com", password: "secret")
puts "Creating dinos...."
dinos = []
dinos << Dinosaur.create!(
  name: "Roger",
  species: "Tyrannosaur",
  address: "Rennes",
  description: "He is a very kind dino who likes to eat humans",
  price_per_day: 800,
  user_id: users[3].id
)
dinos << Dinosaur.create!(
  name: "Danielle",
  species: "Diplodocus",
  address: "Vitré",
  description: "She is a very lazy dino who likes to eat leaves",
  price_per_day: 1800,
  user_id: users[3].id
)
dinos << Dinosaur.create!(
  name: "Mickael",
  species: "Stegosaur",
  address: "Saint-Malo",
  description: "He is a very stupid dino who likes to play with humans",
  price_per_day: 6800,
  user_id: users[2].id
)
dinos << Dinosaur.create!(
  name: "Boris",
  species: "Allosaur",
  address: "Brest",
  description: "He is a very smart dino who likes to play chess with humans",
  price_per_day: 16800,
  user_id: users[2].id
)
dinos << Dinosaur.create!(
  name: "Alfred",
  species: "Velociraptor",
  address: "Lyon",
  description: "He is a very small dino who likes to tickel humans",
  price_per_day: 3800,
  user_id: users[3].id
)
dinos << Dinosaur.create!(
  name: "Marion",
  species: "Galliminus",
  address: "Bordeaux",
  description: "She is a very quick dino who likes to run 10 kilometers a day",
  price_per_day: 6800,
  user_id: users[1].id
)
dinos << Dinosaur.create!(
  name: "Jacqueline",
  species: "Triceratops",
  address: "Biscarrosse",
  description: "She is a very old dino who likes to spend days walking in parks",
  price_per_day: 7800,
  user_id: users[1].id
)
dinos << Dinosaur.create!(
  name: "Momo",
  species: "Archeopteryx",
  address: "Marseille",
  description: "He is a very long dino with a strong accent from marseille who likes to fly around",
  price_per_day: 450,
  user_id: users[2].id
)
dinos << Dinosaur.create!(
  name: "Jean-Claude",
  species: "Spinosaur",
  address: "Alger",
  description: "He is a very curious dino who likes to visit countries",
  price_per_day: 5670,
  user_id: users[1].id
)
puts "Creating Bookings...."
Booking.create!(user_id: users[0].id, dinosaur_id: dinos[0].id, start_date: "2022-11-30T10:05:06+00:00", end_date: "2022-12-03T10:05:06+00:00")
Booking.create!(user_id: users[0].id, dinosaur_id: dinos[2].id, start_date: "2022-12-05T10:05:06+00:00", end_date: "2022-12-07T10:05:06+00:00")
Booking.create!(user_id: users[1].id, dinosaur_id: dinos[4].id, start_date: "2022-12-10T10:05:06+00:00", end_date: "2022-12-15T10:05:06+00:00")
Booking.create!(user_id: users[2].id, dinosaur_id: dinos[8].id, start_date: "2022-12-18T10:05:06+00:00", end_date: "2022-12-21T10:05:06+00:00")
puts "Done"

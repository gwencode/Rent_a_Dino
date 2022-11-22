puts "Cleaning DB....."
Booking.destroy_all
Dinosaur.destroy_all
User.destroy_all
puts "Creating users...."

users = []
user_data = [
  [{ first_name: "Olivier", last_name: "KERMOAL", email: "olivier@me.com", password: "secret" }, "olivier.jpeg"],
  [{ first_name: "Gwendal", last_name: "LE BRIS", email: "gwendal@me.com", password: "secret" }, "gwendal.jpeg"],
  [{ first_name: "Steven", last_name: "DORION", email: "steven@me.com", password: "secret" }, "steven.jpeg"],
  [{ first_name: "Clément", last_name: "CORDEIRO", email: "clement@me.com", password: "secret" }, "clement.jpeg"]
]
user_data.each do |u|
  user = User.new(u.first)
  file = File.open("db/fixtures/#{u.last}")
  user.avatar.attach(io: file, filename: u.last)
  user.save!
  users << user
end

puts "Creating dinos...."

dinos = []
dino_data = [
  [{
    name: "Roger",
    species: "Tyrannosaur",
    address: "Rennes",
    description: "He is a very kind dino who likes to eat humans",
    price_per_day: 800,
    user_id: users[3].id
  }, "dino1.jpeg"],
  [{
    name: "Danielle",
    species: "Diplodocus",
    address: "Vitré",
    description: "She is a very lazy dino who likes to eat leaves",
    price_per_day: 1800,
    user_id: users[3].id
  }, "dino2.png"],
  [{
    name: "Mickael",
    species: "Stegosaur",
    address: "Saint-Malo",
    description: "He is a very stupid dino who likes to play with humans",
    price_per_day: 6800,
    user_id: users[2].id
  }, "dino3.jpeg"],
  [{
    name: "Boris",
    species: "Allosaur",
    address: "Brest",
    description: "He is a very smart dino who likes to play chess with humans",
    price_per_day: 16800,
    user_id: users[2].id
  }, "dino4.jpeg"],
  [{
    name: "Alfred",
    species: "Velociraptor",
    address: "Lyon",
    description: "He is a very small dino who likes to tickel humans",
    price_per_day: 3800,
    user_id: users[3].id
  }, "dino5.jpeg"],
  [{
    name: "Marion",
    species: "Galliminus",
    address: "Bordeaux",
    description: "She is a very quick dino who likes to run 10 kilometers a day",
    price_per_day: 6800,
    user_id: users[1].id
  }, "dino6.jpeg"],
  [{
    name: "Jacqueline",
    species: "Triceratops",
    address: "Biscarrosse",
    description: "She is a very old dino who likes to spend days walking in parks",
    price_per_day: 7800,
    user_id: users[1].id
  }, "dino7.jpeg"],
  [{
    name: "Momo",
    species: "Archeopteryx",
    address: "Marseille",
    description: "He is a very long dino with a strong accent from marseille who likes to fly around",
    price_per_day: 450,
    user_id: users[2].id
  }, "dino8.jpeg"],
  [{
    name: "Jean-Claude",
    species: "Spinosaur",
    address: "Alger",
    description: "He is a very curious dino who likes to visit countries",
    price_per_day: 5670,
    user_id: users[1].id
    }, "dino9.jpeg"],
  [{
    name: "Albert",
    species: "Pterodactyl",
    address: "Tunis",
    description: "He is a very kind dino who likes to eat humans",
    price_per_day: 1600,
    user_id: users[3].id
  }, "dino10.jpeg"]
]
dino_data.each do |u|
  dino = Dinosaur.new(u.first)
  file = File.open("db/fixtures/#{u.last}")
  dino.photos.attach(io: file, filename: u.last)
  dino.save!
  dinos << dino
end
puts "Creating Bookings...."
Booking.create!(user_id: users[0].id, dinosaur_id: dinos[0].id, start_date: "2022-11-30T10:05:06+00:00", end_date: "2022-12-03T10:05:06+00:00")
Booking.create!(user_id: users[0].id, dinosaur_id: dinos[2].id, start_date: "2022-12-05T10:05:06+00:00", end_date: "2022-12-07T10:05:06+00:00")
Booking.create!(user_id: users[1].id, dinosaur_id: dinos[4].id, start_date: "2022-12-10T10:05:06+00:00", end_date: "2022-12-15T10:05:06+00:00")
Booking.create!(user_id: users[2].id, dinosaur_id: dinos[8].id, start_date: "2022-12-18T10:05:06+00:00", end_date: "2022-12-21T10:05:06+00:00")
puts "Done"

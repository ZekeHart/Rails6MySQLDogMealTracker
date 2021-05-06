# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# !!!Note, unlike in the website interface, here data is actually destroyed not just discard!!!
p "Seeding..."

p "Creating users..."
Meal.destroy_all
Dog.destroy_all
Owner.destroy_all
User.destroy_all

User.create!([{
    username: "Admin",
    password: "admin",
    admin: true,
},
{
    username: "Joey",
    password: "joey",
    admin: false,
},
{
    username: "User",
    password: "user",
    admin: false,
}])

p "Created #{User.count} users"

p "Creating owners..."


Owner.create!([{
    first_name: "Dirk",
    last_name: "Gently",
    email: "dg@fake.com",
    phone_number: "(919) 555-7729",
},
{
    first_name: "Douglas",
    last_name: "Adams",
    email: "da@fake.com",
    phone_number: "(310) 555-4967",
},
{
    first_name: "Ford",
    last_name: "Prefect",
    email: "fp@fake.com",
    phone_number: "(310) 555-4967",
},
{
    first_name: "Zaphod",
    last_name: "Beeblebrox",
    email: "zb@fake.com",
    phone_number: "(310) 555-4967",
},
{
    first_name: "Arthur",
    last_name: "Dent",
    email: "ad@fake.com",
    phone_number: "(919) 555-2977",
}])

p "Created #{Owner.count} owners"

p "Creating dogs..."


owner_ids = Owner.all.pluck(:id)

Dog.create!([{
    name: "Spot",
    age: 5,
    color: "brown",
    weight: 45.2,
    owner_id: owner_ids[0],
},
{
    name: "Rover",
    age: 12,
    color: "white",
    weight: 15.2,
    owner_id: owner_ids[0],
},
{
    name: "Spot3",
    age: 5,
    color: "brown",
    weight: 405.2,
    owner_id: owner_ids[1],
},
{
    name: "Spot4",
    age: 5,
    color: "black",
    weight: 45.2,
    owner_id: owner_ids[3],
},
{
    name: "King",
    age: 5,
    color: "white",
    weight: 45.2,
    owner_id: owner_ids[0],
},
{
    name: "Ralph",
    age: 5,
    color: "brown",
    weight: 45.2,
    owner_id: owner_ids[1],
},
{
    name: "Joey",
    age: 5,
    color: "black",
    weight: 45.2,
    owner_id: owner_ids[3],
},
{
    name: "Monster",
    age: 6000,
    color: "red",
    weight: 666.66,
    owner_id: owner_ids[4],
},
{
    name: "Rufus",
    age: 3,
    color: "pink",
    weight: 45.2,
    owner_id: owner_ids[4],
},
{
    name: "Spot5",
    age: 9,
    color: "yellow",
    weight: 45.2,
    owner_id: owner_ids[4],
}])

p "Created #{Dog.count} dogs"

p "Creating meals..."


dog_ids = Dog.all.pluck(:id)

Meal.create!([{
    brand: "Kibbles",
    quantity: 5,
    finished: true,
    finished_on: 1.days.ago,
    dog_id: dog_ids[0],
},
{
    brand: "Bits",
    quantity: 4,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[1],
},
{
    brand: "Kibbles",
    quantity: 2,
    finished: true,
    finished_on: 1.days.ago,
    dog_id: dog_ids[4],
},
{
    brand: "Crunch",
    quantity: 5,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[4],
},
{
    brand: "Bits",
    quantity: 4,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[1],
},
{
    brand: "Kibbles",
    quantity: 2,
    finished: true,
    finished_on: 5.days.ago,
    dog_id: dog_ids[4],
},
{
    brand: "Crunch",
    quantity: 5,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[4],
},
{
    brand: "Bits",
    quantity: 1,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[1],
},
{
    brand: "Kibbles",
    quantity: 2,
    finished: true,
    finished_on: 16.days.ago,
    dog_id: dog_ids[4],
},
{
    brand: "Crunch",
    quantity: 5,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[4],
},
{
    brand: "Bits",
    quantity: 4,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[1],
},
{
    brand: "Kibbles",
    quantity: 14,
    finished: true,
    finished_on: 1.days.ago,
    dog_id: dog_ids[4],
},
{
    brand: "Crunch",
    quantity: 5,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[4],
},
{
    brand: "Bits",
    quantity: 4,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[1],
},
{
    brand: "Kibbles",
    quantity: 2,
    finished: true,
    finished_on: 1.days.ago,
    dog_id: dog_ids[4],
},
{
    brand: "Crunch",
    quantity: 5,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[4],
},
{
    brand: "Bits",
    quantity: 8,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[9],
},
{
    brand: "Kibbles",
    quantity: 2,
    finished: true,
    finished_on: 1.days.ago,
    dog_id: dog_ids[4],
},
{
    brand: "Crunch",
    quantity: 5,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[4],
},
{
    brand: "Bits",
    quantity: 4,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[1],
},
{
    brand: "Kibbles",
    quantity: 2,
    finished: true,
    finished_on: 11.days.ago,
    dog_id: dog_ids[4],
},
{
    brand: "Crunch",
    quantity: 5,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[4],
},
{
    brand: "Bits",
    quantity: 4,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[1],
},
{
    brand: "Kibbles",
    quantity: 2,
    finished: true,
    finished_on: 10.days.ago,
    dog_id: dog_ids[4],
},
{
    brand: "Crunch",
    quantity: 5,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[5],
},
{
    brand: "Bits",
    quantity: 4,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[7],
},
{
    brand: "Kibbles",
    quantity: 2,
    finished: true,
    finished_on: 1.days.ago,
    dog_id: dog_ids[4],
},
{
    brand: "Crunch",
    quantity: 5,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[9],
},
{
    brand: "Bits",
    quantity: 4,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[7],
},
{
    brand: "Kibbles",
    quantity: 2,
    finished: true,
    finished_on: 1.days.ago,
    dog_id: dog_ids[7],
},
{
    brand: "Crunch",
    quantity: 5,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[7],
},
{
    brand: "Bits",
    quantity: 4,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[1],
},
{
    brand: "Kibbles",
    quantity: 14,
    finished: true,
    finished_on: 1.days.ago,
    dog_id: dog_ids[4],
},
{
    brand: "Crunch",
    quantity: 5,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[4],
},
{
    brand: "Bits",
    quantity: 4,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[1],
},
{
    brand: "Kibbles",
    quantity: 2,
    finished: true,
    finished_on: 1.days.ago,
    dog_id: dog_ids[4],
},
{
    brand: "Crunch",
    quantity: 5,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[4],
},
{
    brand: "Bits",
    quantity: 8,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[9],
},
{
    brand: "Kibbles",
    quantity: 2,
    finished: true,
    finished_on: 1.days.ago,
    dog_id: dog_ids[4],
},
{
    brand: "Crunch",
    quantity: 5,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[4],
},
{
    brand: "Bits",
    quantity: 4,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[1],
},
{
    brand: "Kibbles",
    quantity: 2,
    finished: true,
    finished_on: 11.days.ago,
    dog_id: dog_ids[4],
},
{
    brand: "Crunch",
    quantity: 5,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[4],
},
{
    brand: "Bits",
    quantity: 4,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[1],
},
{
    brand: "Kibbles",
    quantity: 2,
    finished: true,
    finished_on: 10.days.ago,
    dog_id: dog_ids[4],
},
{
    brand: "Crunch",
    quantity: 5,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[5],
},
{
    brand: "Bits",
    quantity: 4,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[7],
},
{
    brand: "Kibbles",
    quantity: 2,
    finished: true,
    finished_on: 1.days.ago,
    dog_id: dog_ids[4],
},
{
    brand: "Crunch",
    quantity: 5,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[9],
},
{
    brand: "Bits",
    quantity: 4,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[7],
},
{
    brand: "Kibbles",
    quantity: 2,
    finished: true,
    finished_on: 3.days.ago,
    dog_id: dog_ids[8],
},
{
    brand: "Crunch",
    quantity: 5,
    finished: false,
    finished_on: nil,
    dog_id: dog_ids[4],
},
{
    brand: "Kibbles",
    quantity: 2,
    finished: true,
    finished_on: 3.days.ago,
    dog_id: dog_ids[4],
}])

p "Created #{Meal.count} meals"

p "Seeding Complete"

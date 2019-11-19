# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Dog.delete_all

User.create(email: 'nullchar@comcast.net', password: '123456', password_confirmation: '123456')

#Dog 1
url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574169145/Dogs/Retriever2_ulqgsj.jpg"
d1 = Dog.new(name: 'Coolio', user: User.last, breed: 'Mix', postcode: 10439, age: 'Senior', sex: 'Male', description: 'Likes to chillax to the sound of Bob Marley. Perfect lap dog, ideal for those cold, lonely, winter nights.', cuddly: 2, energetic: 1, obedient: 4, couchpotato: 5, price: 20)
d1.remote_photo_url = url
d1.save

url =
d2 = Dog.new(name: 'Storm', user: User.last, breed: 'Pug', postcode: 10557, age: 'Senior', sex: 'Female', description: 'Sleepy and loves to snore. Perfect for cuddling and indoor company.', cuddly: 4, energetic: 2, obedient: 5, couchpotato: 1, price: 27)
d3 = Dog.new(name: 'Bailey', user: User.last, breed: 'Dachshund', postcode: 10559, age: 'Teen', sex: 'Female', description: 'Chill and cool, with a coat as smooth as silk. Ideal lap dog companion.', cuddly: 4, energetic: 4, obedient: 3, couchpotato: 5, price: 23)
d4 = Dog.new(name: 'Tesla', user: User.last, breed: 'Dobermann', postcode: 10439, age: 'Senior', sex: 'Male', description: 'Kind, smart, and gentle. This beautiful dog is ideal for families. He loves to be near people, and is always reinventing himself.', cuddly: 3, energetic: 2, obedient: 5, couchpotato: 5, price: 24)
d5 = Dog.new(name: 'Max', user: User.last, breed: 'Maltese', postcode: 10435, age: 'Puppy', sex: 'Male', description: 'Absolute show-off, take on the town so she can strut her stuff. Loves being pet and spoiled.', cuddly: 5, energetic: 3, obedient: 3, couchpotato: 4, price: 30)
d6 = Dog.new(name: 'Dimitri', user: User.last, breed: 'Poodle', postcode: 10585, age: 'Adult', sex: 'Male', description: 'An all-round great dog. Will go along with the flow in any situation.', cuddly: 3, energetic: 4, obedient: 4, couchpotato: 4, price: 27)
d7 = Dog.new(name: 'Lucy', user: User.last, breed: 'Rottweiler', postcode: 10439, age: 'Adult', sex: 'Female', description: 'Patient, obedient, and loves children. Perfect for any occasion.', cuddly: 3, energetic: 3, obedient: 3, couchpotato: 4, price: 23)
d8 = Dog.new(name: 'Lebowski', user: User.last, breed: 'Cocker Spaniel', postcode: 10559, age: 'Puppu', sex: 'Male', description: 'Happy and excited, perfect companion for an evening out on the town.', cuddly: 5, energetic: 5, obedient: 5, couchpotato: 3, price: 24)

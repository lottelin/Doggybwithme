# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.delete_all
User.delete_all
Dog.delete_all

User.create(email: 'me@example.com', password: '123456', password_confirmation: '123456')


#Dog 1
url = "https://res.cloudinary.com/dlajprtba/image/upload/v1574169144/Dogs/Springer2_vvqjfi.jpg"
d1 = Dog.new(name: 'Coolio', user: User.last, breed: 'Mix', postcode: 10439, age: 'Senior', sex: 'Male', description: 'Likes to chillax to the sound of Bob Marley. Perfect lap dog, ideal for those cold, lonely, winter nights.', cuddly: 2, energetic: 1, obedient: 4, couchpotato: 5, price: 20)
d1.remote_photo_url = url
d1.save

url2 = "https://res.cloudinary.com/dlajprtba/image/upload/v1574171316/Dogs/Pug1_rtpab3.jpg"
d2 = Dog.new(name: 'Storm', user: User.last, breed: 'Pug', postcode: 10557, age: 'Senior', sex: 'Female', description: 'Sleepy and loves to snore. Perfect for cuddling and indoor company.', cuddly: 4, energetic: 2, obedient: 5, couchpotato: 1, price: 27)
d2.remote_photo_url = url2
d2.save

url3 = "https://res.cloudinary.com/dlajprtba/image/upload/v1574171699/Dogs/Dachsund1_mgdrdr.jpg"
d3 = Dog.new(name: 'Bailey', user: User.last, breed: 'Dachshund', postcode: 10559, age: 'Teen', sex: 'Female', description: 'Chill and cool, with a coat as smooth as silk. Ideal lap dog companion.', cuddly: 4, energetic: 4, obedient: 3, couchpotato: 5, price: 23)
d3.remote_photo_url = url3
d3.save

url4 = "https://res.cloudinary.com/dlajprtba/image/upload/v1574169141/Dogs/Maltese1_zvulnm.jpg"
d4 = Dog.new(name: 'Max', user: User.last, breed: 'Maltese', postcode: 10435, age: 'Puppy', sex: 'Male', description: 'Absolute show-off, take on the town so she can strut her stuff. Loves being pet and spoiled.', cuddly: 5, energetic: 3, obedient: 3, couchpotato: 4, price: 30)
d4.remote_photo_url = url4
d4.save

url5 = "https://res.cloudinary.com/dlajprtba/image/upload/v1574169089/Dogs/Labradoodle_j6qcbu.png"
d5 = Dog.new(name: 'Dimitri', user: User.last, breed: 'Poodle', postcode: 10585, age: 'Adult', sex: 'Male', description: 'An all-round great dog. Will go along with the flow in any situation.', cuddly: 3, energetic: 4, obedient: 4, couchpotato: 4, price: 27)
d5.remote_photo_url = url5
d5.save

url6 = "https://res.cloudinary.com/dlajprtba/image/upload/v1574172282/Dogs/Rottweiler2_pcicqd.jpg"
d6 = Dog.new(name: 'Lucy', user: User.last, breed: 'Rottweiler', postcode: 10439, age: 'Adult', sex: 'Female', description: 'Patient, obedient, and loves children. Perfect for any occasion.', cuddly: 3, energetic: 3, obedient: 3, couchpotato: 4, price: 23)
d6.remote_photo_url = url6
d6.save

url7 = "https://res.cloudinary.com/dlajprtba/image/upload/v1574169139/Dogs/Collie1_dru19q.jpg"
d7 = Dog.new(name: 'Lebowski', user: User.last, breed: 'Border Collie', postcode: 10559, age: 'Puppy', sex: 'Male', description: 'Happy and excited, perfect companion for an evening out on the town.', cuddly: 5, energetic: 5, obedient: 5, couchpotato: 3, price: 24)
d7.remote_photo_url = url7
d7.save

url8 = "https://res.cloudinary.com/dlajprtba/image/upload/v1574169140/Dogs/Boxer3_ntzww6.jpg"
d8 = Dog.new(name: 'Tesla', user: User.last, breed: 'Boxer', postcode: 10439, age: 'Senior', sex: 'Male', description: 'Kind, smart, and gentle. This beautiful dog is ideal for families. He loves to be near people, and is always reinventing himself.', cuddly: 3, energetic: 2, obedient: 5, couchpotato: 5, price: 24)
d8.remote_photo_url = url8
d8.save

puts 'Dogs are done'

5.times do
  Booking.create!(
    user: User.all.sample,
    dog: Dog.all.sample,
    start_date: Time.at(rand * Time.now.to_i),
    end_date: Time.at(rand * Time.now.to_i)
    )
end

puts 'Bookings are done'

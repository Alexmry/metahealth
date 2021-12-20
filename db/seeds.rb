# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Cleaning database...'
Company.destroy_all
User.destroy_all
puts 'seeding database'

emails = ['p@gmail.com', 'j@gmail.com', 'a@gmail.com', 'f@gmail.com', 'c@gmail.com', 'm@gmail.com', 't@gmail.com']
passwords = ['p12345', 'j12345', 'a12345', 'f12345', 'c12345', 'm12345', 't12345']
names = ['pierre', 'jonas', 'alex', 'felix', 'cecile', 'marina', 'tsedaye']

for i in 0..6
    User.create(
        email: emails[i],
        password: passwords[i],
        name: names[i]
    )
end

puts "setting id for user"
users_id = []
users = User.all
users.each do |user|
    users_id << user.id
    puts " user id #{user.id} added to the basket"
end

4.times do
    company = Company.new(
        name: Faker::Company.name,
        email: Faker::Internet.email,
        address: Faker::Address.street_address,
        user_id: users_id.sample
    )
    company.save!
    puts "company created #{company.id} id"
end
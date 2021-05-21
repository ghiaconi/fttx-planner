# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# Seed the db with some records
#
# Create first admin user
puts 'Seed starting....'
puts 'Creating first user....'

User.create(email: "admin@example.com", password: "123456", password_confirmation: "123456", admin: true, confirmed_at: Time.now)

puts 'Admin user created'
puts 'login: admin@example.com'
puts 'password: 123456'

# Create projects
puts 'Creating projects....'
100.times do |index|
  Project.create!(title: "#{Faker::Verb.simple_present} #{Faker::Construction.subcontract_category}",
                street_name: Faker::Address.street_name,
                house_number: Faker::Number.within(range: 1..300),
                project_number: Faker::Address.building_number,
                responsible_phone: Faker::PhoneNumber.phone_number_with_country_code,
                remarks: Faker::Lorem.paragraphs(number: 1, supplemental: true)
  )
end
puts '100 projects created'

# Create teams
puts 'Creating projects....'
13.times do |index|
  Team.create!(name: Faker::Team.name)
end

puts '13 teams created'
puts 'Seed complete!'

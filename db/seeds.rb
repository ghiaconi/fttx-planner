# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.index([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.index(name: 'Luke', movie: movies.first)
#
# Seed the db with some records
#
# Create first admin user
puts 'Seed starting....'

# Create projects
puts 'Creating projects....'
100.times do |index|
  puts "project .... #{index}"
  Project.create!(title: "#{Faker::Verb.simple_present} #{Faker::Construction.subcontract_category}",
                  street_name: Faker::Address.street_name,
                  house_number: Faker::Number.within(range: 1..300),
                  project_number: Faker::Address.building_number,
                  responsible_phone: Faker::PhoneNumber.phone_number_with_country_code,
                  remarks: Faker::Lorem.paragraphs(number: 1, supplemental: true)
  )
end

# Create teams
puts 'Creating some teams....'
13.times do |index|
  puts "team .... #{index}"
  Team.create!(name: Faker::Team.name)
end

# Create users
10.times do |index|
  puts "user .... #{index}"
  User.create(email: Faker::Internet.email,
              password: "123456",
              password_confirmation: "123456",
              confirmed_at: Time.now,
              full_name: Faker::Name.name,
              nickname: Faker::Internet.username,
              phone_number: Faker::PhoneNumber.phone_number_with_country_code,
              team_id: Team.all.sample.id
  )
end

# Creating one admin
User.create(email: "admin@fttx-planner.net", password: "123456", password_confirmation: "123456", admin: true, confirmed_at: Time.now, team_id: Team.last.id)
puts 'Admin user created'
puts "login: #{User.last.email} and password: 123456"

puts "#{Project.all.count} projects, #{Team.all.count} teams and #{User.all.count} users created"

puts 'Seed complete!'

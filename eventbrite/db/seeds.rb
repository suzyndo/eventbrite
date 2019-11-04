# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
#create some users

10.times do
    name = Faker::FunnyName.unique.two_word_name
    description = Faker::Lorem.sentence(word_count: 10,random_words_to_add: 5)
    email = Faker::Name.first_name + "@yopmail.com"
    name = name.split(' ')
    
    User.create(first_name: name[0], last_name: name[1],
    description: description, email: email)
  end

 
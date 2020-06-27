# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do |n|
    User.create!(
      name: "user#{n+様}",
      email: "user#{n+sama}@g.c",
      password: "password#{n+sama}",
      password_confirmation: "password#{n+sama}",
      uid: "#{n+100}",
      provider: ""
    )
  end
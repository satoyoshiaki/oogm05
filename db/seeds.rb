# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do |n|
    User.create!(
      name: "user#{n+10}",
      email: "user#{n+10}@g.c",
      password: "password#{n+10}",
      password_confirmation: "password#{n+10}",
      uid: "#{n+100}",
      provider: ""
    )
  end

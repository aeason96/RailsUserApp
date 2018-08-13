# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
0.times do
    User.create({
        name: Faker::Name.first_name,
        password: '12345'
    })
end

25.times do
    Micropost.create({
        user: User.find(Faker::Number.between(1, User.count)),
        content: Faker::RickAndMorty.quote
    })
end
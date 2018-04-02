# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  post1 = Post.create(title: Faker::Book.title, subtitle: Faker::Lorem.sentence(4), body: Faker::Lorem.paragraph(10))
  5.times do
    Comment.create(post: post1, author:Faker::Science.scientist, comment: Faker::Lorem.sentence(4))
  end
end

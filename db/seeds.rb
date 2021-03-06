# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Vote.destroy_all
Post.destroy_all

20.times do
  post = Post.create!( title: Faker::Company.catch_phrase,
               username: Faker::Internet.user_name,
               comment_count: rand(1000),
               created_at: Time.now - rand(20000))

  vote_count = rand(100)
  vote_count.times do
    post.votes.create!(value: 1)
  end
end

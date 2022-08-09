# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
greeting_attributes = [
  { text: "hello" },
  { text: "haha" },
  { text: "whats up!" },
  { text: "hey dude!" },
  { text: "nice smile!" },
]
puts "seeding data..."
greeting_attributes.each do |attributes|
  Message.create(attributes) unless Message.where(attributes).first
end

puts "done!"
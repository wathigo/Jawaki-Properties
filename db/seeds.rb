# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def random_point(max_radius=57)
  r = max_radius * rand ** 0.5
  theta = rand * 2 * Math::PI
  [r * Math.cos(theta), r * Math.sin(theta)]
end

categories = ['Housing Properties', 'Land Properties']
categories.each do |n|
  Category.create!(prop_type: n)
end

categories = Category.all

all_status = ['booked', 'reserved', 'bought']

categories.each do |category|
  points = random_point
  random_latt = points[0]
  random_long = points[1]
  4.times do |n|
    category.properties.create!(
      name: Faker::Name.unique.name,
      address: Faker::Games::WorldOfWarcraft.quote,
      price: (200000 + rand(1000000)),
      latt: random_latt,
      long: random_long,
      status: all_status.sample
    )
  end
end

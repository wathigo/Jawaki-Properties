# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ADDRESSES = [
  '311 RT 9W, Glenmont NY 12077',
  '425 Route 31, Macedon NY 14502',
  '352 Palmer Road, Ware MA 108',
  '700 Oak Street, Brockton MA 2301',
  '288 Larkin, Monroe NY 10950',
  '591 Memorial Dr, Chicopee MA 1020',
  '255 W Main St, Avon CT 6001',
  '67 Newton Rd, Danbury CT 6810',
  '337 Russell St, Hadley MA 103',
  '3949 Route 31, Clay NY 13041',
  '250 Rt 59, Airmont NY 10901'
]

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
  8.times do |n|
    category.properties.create!(
      name: Faker::Name.unique.name,
      address: ADDRESSES.sample,
      description: Faker::Games::WorldOfWarcraft.quote,
      price: (200000 + rand(1000000)),
      latt: random_latt,
      long: random_long,
      status: all_status.sample
    )
  end
end

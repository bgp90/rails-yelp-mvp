# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)puts 'Cleaning database...'
Restaurant.destroy_all
# Review.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Shing Ling',
    address:      'Av Raja Gabaglia',
    phone_number: '(31)3289-8921',
    category:     'chinese'
  },
  {
    name:         'Pizza Italia',
    address:      'Rua Rio de Janeiro',
    phone_number: '(31)3281-9000',
    category:     'italian'
  },
  {
    name:         'L`Entrecot',
    address:      'Rua Curitiba',
    phone_number: '(31)3820-5632',
    category:     'french'
  },
  {
    name:         'Tatame',
    address:      'Rua Grao Mogol',
    phone_number: '(31)3324-5987',
    category:     'japanese'
  },
   {
    name:         'Lindt',
    address:      'BH Shopping',
    phone_number: '(31)3562-0123',
    category:     'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'


puts 'Creating reviews...'
reviews_attributes = [
  {
    content:         'Muito Bom',
    rating:          4,
    restaurant_id:   1

  },
  {
    content:         'Medio',
    rating:          3,
    restaurant_id:   2

  },
  {
    content:         'Excelente',
    rating:          5,
    restaurant_id:   3

  },
  {
    content:         'Abaixo das expectativas',
    rating:          2,
    restaurant_id:   4

  },
  {
    content:         'Muito ruim',
    rating:          1,
    restaurant_id:   4

  }
]
Review.create!(reviews_attributes)
puts 'Finished!'

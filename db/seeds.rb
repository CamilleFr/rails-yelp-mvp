puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Springroll',
    address:      'Rue Chapon',
    phone_number:  '0101010101',
    category:        'chinese'
  },
  {
    name:         'Milanese',
    address:      'Rue Chapon',
    phone_number:  '0202020202',
    category:        'italian'
  },
  {
    name:         'Sushis',
    address:      'Rue Chapon',
    phone_number:  '0303030303',
    category:        'japanese'
  },
  {
    name:         'Gigot',
    address:      'Rue Chapon',
    phone_number:  '0404040404',
    category:        'french'
  },
  {
    name:         'Waffler',
    address:      'Rue Chapon',
    phone_number:  '0505050505',
    category:        'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

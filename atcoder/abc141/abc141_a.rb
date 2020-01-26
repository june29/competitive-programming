S = gets.chomp

puts({
  'Sunny': 'Cloudy',
  'Cloudy': 'Rainy',
  'Rainy': 'Sunny'
}[S.to_sym])

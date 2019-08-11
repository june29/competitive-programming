input = gets
a, b = input.split(' ').map(&:to_i)

puts (a * b).even? ? 'Even' : 'Odd'

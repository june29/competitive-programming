prices = gets.split.map(&:to_i)

puts prices.sort.take(2).inject(:+)

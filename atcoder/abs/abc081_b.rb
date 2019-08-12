n = gets.to_i
numbers = gets.split(' ').map(&:to_i)

count = 0

loop do
  break if numbers.all?(&:even?).!

  count += 1
  numbers.map! { |number| number / 2 }
end

puts count

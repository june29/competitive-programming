N = gets.to_i
numbers = gets.split(" ").map(&:to_i)

counter = 0

while numbers.all?(&:even?)
  counter += 1

  numbers.map! { |n| n / 2 }
end

puts counter

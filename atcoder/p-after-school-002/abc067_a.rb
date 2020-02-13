A, B = gets.split.map(&:to_i)

puts [A, B, A + B].any? { |n| n % 3 == 0 } ? "Possible" : "Impossible"

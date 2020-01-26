A, B = gets.chomp.split(" ").map(&:to_i)

if [A, B].any? { |n| n > 9 }
  puts "-1"
  exit
end

puts A * B

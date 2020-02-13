A, B = gets.split.map(&:to_i)

a = (A == 1) ? 100 : A
b = (B == 1) ? 100 : B

if a > b
  puts "Alice"
elsif a == b
  puts "Draw"
else
  puts "Bob"
end

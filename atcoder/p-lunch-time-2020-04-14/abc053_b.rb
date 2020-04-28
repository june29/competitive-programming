S = gets.chomp

a_i = S.index("A")
z_i = S.size - S.reverse.index("Z")

puts z_i - a_i

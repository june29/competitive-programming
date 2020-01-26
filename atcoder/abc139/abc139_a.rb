S = gets.chomp
T = gets.chomp

count = 0

S.length.times { |n| S.chars[n - 1] == T.chars[n - 1] ? count += 1 : nil }

puts count

n = gets.chomp.to_i
as = gets.chomp.split(' ').map(&:to_i)

puts (1.0 / as.map(&:to_f).map { |a| 1.0 / a }.inject(&:+))

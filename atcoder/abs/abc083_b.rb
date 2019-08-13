n, a, b = gets.split(' ').map(&:to_i)

sum = 0

(1..n).each do |num|
  value = num.to_s.chars.map(&:to_i).inject(&:+)

  sum += num if a <= value && value <= b
end

puts sum

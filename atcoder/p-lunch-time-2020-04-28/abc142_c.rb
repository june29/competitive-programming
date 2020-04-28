N = gets.to_i
As = gets.split.map(&:to_i)

puts As.map.with_index { |n, i| [n, i + 1] }.sort_by { |n, i| n }.map { |n, i| i }.join(" ")

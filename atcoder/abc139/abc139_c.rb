N = gets.to_i
Hs = gets.chomp.split.map(&:to_i)

counter = 0
max_count = 0

(Hs.length - 1).times { |n|
  if Hs[n] >= Hs[n + 1]
    counter += 1
    max_count = [max_count, counter].max
  else
    counter = 0
  end
}

puts max_count

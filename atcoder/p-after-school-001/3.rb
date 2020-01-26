N = gets.to_i
ss = N.times.map { gets.chomp }
M = gets.to_i
ts = M.times.map { gets.chomp }

max = 0

ss.uniq.each do |word|
  score = ss.count(word) - ts.count(word)

  max = score if score > max
end

puts max

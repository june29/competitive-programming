N = gets.to_i
Bs = gets.split.map(&:to_i)

As = [Bs[0]]

(N - 2).times do |i|
  As.push([Bs[i], Bs[i + 1]].min)
end

As.push(Bs[-1])

puts As.inject(:+)

N = gets.to_i
Ps = gets.split.map(&:to_i)

sum = 0

seconds = []

(0...(N - 1)).each do |l|
  ((l + 1)...N).each do |r|
    p [l, r, Ps[l..r], Ps[l..r].sort.reverse[1]]
    seconds << Ps[l..r].sort.reverse[1]
    sum += Ps[l..r].sort.reverse[1]
  end
end

p seconds.sort
puts sum

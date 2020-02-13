N, K = gets.split.map(&:to_i)
ab = N.times.map { gets.split.map(&:to_i) }

sum = 0
count = 0

loop do
  break if count == K

  ab.sort_by! { |a, _b| a }

  min = ab.first

  if min[1] == 0 || ab.size == 1
    c = K - count
  else
    c = [((ab[1][0] - min[0]).to_f / min[1].to_f).to_i, K - count].min
    c = 1 if c == 0
  end

  c.times do
    sum += min[0]
    min[0] += min[1]
  end

  count += c
end

puts sum

=begin

K.times do
  ab.sort_by! { |a, _b| a }

  min = ab.first

  sum += min[0]
  min[0] += min[1]
end

puts sum

seconds = ab.map(&:first)
additions = ab.map(&:last)

sum = 0

K.times do
  min = seconds.min
  index = seconds.index(min)

  sum += min

  seconds[index] += additions[index]
end

puts sum
=end

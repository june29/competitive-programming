gets
As = gets.split.map(&:to_i)

counts = As.group_by(&:itself).map { |n, ns| [n, ns.size] }.to_h

fours = counts.select { |n, count| count >= 4 }
twos = counts.select { |n, count| count >= 2 }

fours_score = 0
twos_score = 0

if fours.size > 0
  fours_score = fours.sort.reverse[0][0] ** 2
end

if twos.size >= 2
  twos_score = twos.sort_by { |n, c| n }.reverse.take(2).map { |n, _| n }.inject(:*)
end

puts [fours_score, twos_score].max

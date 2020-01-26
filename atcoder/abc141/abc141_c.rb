N, K, Q = gets.split.map(&:to_i)
As = Q.times.map { gets.to_i }

counter = As.group_by { |e| e }.map { |n, group| [n, group.size] }.to_h

N.times do |n|
  i = n + 1

  puts(K - Q + counter[i].to_i > 0 ? "Yes" : "No")
end

=begin
scores = Hash.new(K)

As.each do |answerer|
  N.times do |n|
    i = n + 1

    scores[i] -= 1 unless i == answerer
  end
end

N.times do |n|
  i = n + 1

  puts(scores[i] > 0 ? "Yes" : "No")
end
=end

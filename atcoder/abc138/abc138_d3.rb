n, q = gets.chomp.split(' ').map(&:to_i)
edges = (n - 1).times.map { gets.chomp.split(' ').map(&:to_i) }
ops = q.times.map { gets.chomp.split(' ').map(&:to_i) }

nodes = edges.flatten.uniq.sort
scores = Hash.new(0)

parents = Hash.new([])
children = Hash.new([])

edges.each do |a, b|
  parents[b] += [a]
  children[a] += [b]

  parents[a].each { |parent| children[parent] += [b] }
  children[b].each { |child| parent[child] += [a] }
end

ops.each do |p, x|
  scores[p] += x
  children[p].each { |child| scores[child] += x }
end

puts nodes.map { |node| scores[node] }.join(' ')

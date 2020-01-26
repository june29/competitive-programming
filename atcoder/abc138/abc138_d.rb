MEMO = {}

def sub(node, edges)
  return edges.flatten.uniq.sort if node == 1
  return MEMO[node] if MEMO.keys.include?(node)

  child_edges = edges.select { |parent, _| node == parent }
  child_nodes = child_edges.map { |_, child| child }

  return [node] if child_nodes.empty?

  result = ([node] + child_nodes + child_nodes.map { |child_node| sub(child_node, edges) }.flatten).uniq
  MEMO[node] = result
end

n, q = gets.chomp.split(' ').map(&:to_i)
edges = (n - 1).times.map { gets.chomp.split(' ').map(&:to_i) }
ops = q.times.map { gets.chomp.split(' ').map(&:to_i) }

nodes = edges.flatten.uniq.sort

scores = Hash.new(0)

ops.each do |p, x|
  sub(p, edges).each { |node| scores[node] += x }
end

puts nodes.map { |node| scores[node] }.join(' ')

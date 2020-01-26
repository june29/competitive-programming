def connected?(matrix)
  ok = [0]
end

N, M = gets.split.map(&:to_i)
edges = M.times.map { gets.split.map { |n| n.to_i - 1 } }

matrix = Array.new(N) { Array.new(N, 0) }

require "pp"

edges.each do |a, b|
  matrix[a][b] = 1
end

pp matrix

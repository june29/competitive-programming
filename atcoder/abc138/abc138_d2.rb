n, q = gets.chomp.split(' ').map(&:to_i)
edges = (n - 1).times.map { gets.chomp.split(' ').map(&:to_i) }
ops = q.times.map { gets.chomp.split(' ').map(&:to_i) }

Dir.mkdir('./workspace')
Dir.mkdir('./workspace/1')

edges.each do |a, b|
  paths = Dir.glob('./workspace/**/*')

  path = paths.find { |path| File.basename(path).to_i == a }

  Dir.mkdir("#{path}/#{b}")
end

nodes = edges.flatten.uniq.sort
scores = Hash.new(0)
dirs = Dir.glob('./workspace/**/*')

ops.each do |p, x|
  dirs.select { |path| path.match?(%r|/#{p}/|) || path.match?(%r|/#{p}\z|) }.
    map { |path| File.basename(path) }.
    each { |node| scores[node.to_i] += x }
end

puts nodes.map { |node| scores[node] }.join(' ')

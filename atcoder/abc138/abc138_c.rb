n = gets.chomp.to_i
vs = gets.chomp.split(' ').map(&:to_i)

vs.map!(&:to_f)

loop do
  vs.sort!

  v0 = vs.shift
  v1 = vs.shift

  v = ((v0 + v1) / 2.0)

  if vs.empty?
    puts v
    break
  end

  vs.unshift(v)
end

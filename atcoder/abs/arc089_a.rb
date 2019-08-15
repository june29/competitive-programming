def able?(before, after)
  t_b, x_b, y_b = before
  t_a, x_a, y_a = after

  d = (x_b - x_a).abs + (y_b - y_a).abs
  t = t_a - t_b

  return false if d > t
  return false if (d % 2) != (t % 2)

  true
end

n = gets.to_i
points = [[0, 0, 0]]
n.times { points << gets.split(' ').map(&:to_i) }

(0...(points.size - 1)).each do |i|
  unless able?(points[i], points[i + 1])
    puts "No"
    exit
  end
end

puts "Yes"

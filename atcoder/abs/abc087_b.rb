a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

count = 0

(0..a).each do |aa|
  (0..b).each do |bb|
    (0..c).each do |cc|
      count += 1 if (aa * 500 + bb * 100 + cc * 50) == x
    end
  end
end

puts count

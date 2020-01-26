X, Y = gets.split.map(&:to_i)

candidates = []

[true, false].each do |first_B|
  [true, false].each do |last_B|
    x = X
    count = 0

    if first_B
      x *= -1
      count += 1
    end

    abs_diff = (x.abs - Y.abs).abs
    x += abs_diff
    count += abs_diff

    if last_B
      x *= -1
      count += 1
    end

    candidates.push(x == Y ? count : nil)
  end
end

puts candidates.compact.min

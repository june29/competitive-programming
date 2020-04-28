x1, y1, x2, y2 = gets.split.map(&:to_i)

if x1 == x2
  r = (y1 - y2).abs

  if y1 < y2
    puts "#{x2 - r} #{y2} #{x2 - r} #{y1}"
  else
    puts "#{x2 + r} #{y2} #{x2 + r} #{y1}"
  end
else
  r = (x1 - x2).abs

  if x1 < x2
    puts "#{x2} #{y2 + r} #{x1} #{y2 + r}"
  else
    puts "#{x2} #{y2 - r} #{x1} #{y1 - r}"
  end
end

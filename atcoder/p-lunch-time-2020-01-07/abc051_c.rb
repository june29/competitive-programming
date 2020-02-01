sx, sy, tx, ty = gets.split.map(&:to_i)

a = []

xd = tx - sx
yd = ty - sy

xd.times { a.push "R" }
yd.times { a.push "U" }
xd.times { a.push "L" }
yd.times { a.push "D" }
a.push "L"
(yd + 1).times { a.push "U" }
(xd + 1).times { a.push "R" }
a.push "D"
a.push "R"
(yd + 1).times { a.push "D" }
(xd + 1).times { a.push "L" }
a.push "U"

puts a.join

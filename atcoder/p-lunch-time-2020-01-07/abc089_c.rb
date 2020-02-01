N = gets.to_i
names = N.times.map { gets.chomp }

counts = {
  m: names.select { |name| name[0] == "M" }.size,
  a: names.select { |name| name[0] == "A" }.size,
  r: names.select { |name| name[0] == "R" }.size,
  c: names.select { |name| name[0] == "C" }.size,
  h: names.select { |name| name[0] == "H" }.size
}

puts "march".chars.combination(3).inject(0) { |sum, comb|
  sum += comb.map { |c| counts[c.to_sym] }.inject(:*)
}

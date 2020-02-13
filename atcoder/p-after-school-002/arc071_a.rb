n = gets.to_i
ss = n.times.map { gets.chomp }

all_chars = ss.map { |s| s.chars }.flatten.sort.uniq
available_chars = Array.new(all_chars)
counters = []

ss.each do |s|
  all_chars.each do |c|
    available_chars.delete(c) unless s.include?(c)
  end

  if available_chars.empty?
    puts
    exit
  end

  counters.push(
    s.chars.each_with_object(Hash.new(0)) { |c, counter| counter[c] += 1 }
  )
end

puts available_chars.map { |c|
  c * counters.map { |counter| counter[c] }.min
}.join

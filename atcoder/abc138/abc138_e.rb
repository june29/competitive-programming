def sub?(str, t)
  return true if t.empty?

  index = str.index(t[0])
  return false if index.nil?

  #puts "#{str}, #{t} -> #{str[index..-1]}, #{t[1..-1]}"
  sub?(str[index..-1], t[1..-1])
end

s = gets.chomp
t = gets.chomp

if t.chars.any? { |c| s.chars.include?(c).! }
  puts "-1"
  exit
end

((t.length)..(t.length * s.length)).each do |n|
  str = (s * (n.to_f / s.length.to_f).ceil)[0..(n - 1)]

  if sub?(str, t)
    puts n
    exit
  end
end

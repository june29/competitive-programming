N = gets.chomp.to_i

if N > 81
  puts "No"
  exit
end

(1..9).each do |a|
  (1..9).each do |b|
    if N == a * b
      puts "Yes"
      exit
    end
  end
end

puts "No"

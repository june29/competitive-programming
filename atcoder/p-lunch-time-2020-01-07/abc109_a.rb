A, B = gets.split(" ").map(&:to_i)

(1..3).each do |c|
  if (A * B * c).odd?
    puts "Yes"
    exit
  end
end

puts "No"

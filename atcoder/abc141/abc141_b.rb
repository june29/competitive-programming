S = gets.chomp

S.chars.each_with_index { |c, i|
  if i.even?
    if %w{R U D}.include?(c).!
      puts "No"
      exit
    end
  else
    if %w{L U D}.include?(c).!
      puts "No"
      exit
    end
  end
}

puts "Yes"

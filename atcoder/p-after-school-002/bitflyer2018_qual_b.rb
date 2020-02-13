A, B, N = gets.split.map(&:to_i)
X = gets.chomp

a = A
b = B

X.chars.each do |c|
 case c
 when "S"
   a -= 1 if a > 0
 when "C"
   b -= 1 if b > 0
 when "E"
   break if a == 0 && b == 0

   if a >= b
     a -= 1
   else
     b -= 1
   end
 end
end

puts [a, b]

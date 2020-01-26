require "prime"

x = gets.to_i

loop do
  if Prime.prime?(x)
    puts x
    exit
  end

  x += 1
end

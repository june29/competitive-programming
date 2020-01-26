N = gets.to_i
As = gets.split.map(&:to_i)
Bs = gets.split.map(&:to_i)
Cs = gets.split.map(&:to_i)

sum = 0
food_prev = -1

N.times do |i|
  food = As[i]
  score = Bs[food - 1]

  sum += score

  if (food_prev + 1) == food
    sum += Cs[food - 2]
  end

  food_prev = food
end

puts sum

R = gets.to_i

puts(
  if R < 1200
    "ABC"
  elsif R < 2800
    "ARC"
  else
    "AGC"
  end
)

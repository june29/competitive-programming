A, B, C, X, Y = gets.split.map(&:to_i)

candidates = []

candidates.push(
  A * X + B * Y
)

candidates.push(
  [X, Y].max * 2 * C
)

candidates.push(
  if X > Y
    Y * 2 * C + (X - Y) * A
  else
    X * 2 * C + (Y - X) * B
  end
)

puts candidates.min

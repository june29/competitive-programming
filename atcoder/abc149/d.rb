N, K = gets.map(&:to_i)
R, S, P = gets.map(&:to_i)
T = gets.chomp

chars = T.chars
score = 0
scores = { "r": P, "s": R, "p": S }
hands = []

chars.each_with_index do |c, i|
  if (i - K) < 0
    if scores[c] < scores[i + K]
    else
      hands.push(%w[r s p] - [c]
    end
  else
  end
end

N, M = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)

powers = As.sort.reverse

m = 1

loop do
  m += 1

  if m ** 2 > M
    powers_head = powers.take(m)
    patterns = powers_head.product(powers_head)
    puts patterns.map { |a, b| a + b }.sort.reverse.take(M).inject(:+)
    exit
  end
end

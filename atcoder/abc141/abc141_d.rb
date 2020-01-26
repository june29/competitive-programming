N, M = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)

if N == 1
  puts As.first / (2 ** M)
  exit
end

def f(n)
  i = 1

  loop do
    return i if 2 ** i >= n
    i += 1
  end
end

prices = As.sort.reverse
prices_f = prices.map { |price| f(price) }
tickets = Array.new(N, 0)

while tickets.inject(:+) >= M
  if prices_f.uniq.size == 1
  else
  end
end


=begin
if N == 1
  puts As.first / (2 ** M)
  exit
end

def f(n)
  i = 1

  loop do
    return i if 2 ** i >= n
    i += 1
  end
end

prices = As.dup
m = M

while m > 0
  puts "-" * 50
  fs = prices.map { |a| f(a) }

  first = fs.max
  second = fs.sort.reverse.find { |e| e < first }

  diff = second.nil? ? 1 : first - second
  tickets = [(diff + 0), m].min

  puts "prices"
  p prices
  puts "fs"
  p fs
  puts "first, second, diff, tickets, m"
  p [first, second, diff, tickets, m]

  index = fs.index(first)
  prices[index] = prices[index] / (2 ** tickets)
  m -= tickets
end

puts prices.inject(:+)
=end

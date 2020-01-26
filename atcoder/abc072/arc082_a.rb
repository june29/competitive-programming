N = gets.to_i
as = gets.split.map(&:to_i)

p as.map { |n| [n - 1, n, n + 1] }.
  flatten.
  select { |n| n > 0 }.
  group_by { |n| n }.
  map { |_, values| values.size }.
  max

p as.map { |n| [n - 1, n, n + 1] }.
  flatten.
  select { |n| n > 0 }.
  uniq.
  sort.map { |c| as.select { |n| [n - 1, n, n +1].include?(c) }.size }.
  max

A, B, K = gets.split.map(&:to_i)

if K >= A
  puts "0 #{[B - (K - A), 0].max}"
else
  puts "#{A - K} #{B}"
end
